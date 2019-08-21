#!/bin/bash

# <bitbar.title>chunkwm/skhd helper</bitbar.title>
# <bitbar.version>v1.0</bitbar.version>
# <bitbar.author>Shi Han NG</bitbar.author>
# <bitbar.author.github>shihanng</bitbar.author.github>
# <bitbar.desc>Plugin that displays desktop id and desktop mode of chunkwm.</bitbar.desc>
# <bitbar.dependencies>brew,chunkwm,skhd</bitbar.dependencies>

# Info about chunkwm, see: https://github.com/koekeishiya/chunkwm
# For skhd, see: https://github.com/koekeishiya/skhd

export PATH=/usr/local/bin:$PATH

function annihilateDesktops() {
  # desktops=$(chunkc tiling::query --desktops-for-monitor $(chunkc tiling::query --monitor id) | wc -w | xargs)
  desktops=$(yabai -m query --spaces | jq 'length')
  for n in $(seq $desktops); do
    # chunkc tiling::desktop --annihilate
    yabai -m space --destroy
    # sleep 0.3
  done
}

function createDesktops() {
  number=$1
  for n in $(seq $number); do
    yabai -m space --create
    # sleep 0.3
  done
}


if [[ "$1" = "stop" ]]; then
  brew services stop yabai
  brew services stop skhd
fi

if [[ "$1" = "restart" ]]; then
  brew services restart yabai
  brew services restart skhd
fi

if [[ "$1" = "refresh" ]]; then
  # monitor_count=$(chunkc tiling::query --monitor count)
  monitor_count=$(yabai -m query --displays | jq '. | length')
  if [[ $monitor_count -eq 1 ]]; then
    # chunkc tiling::monitor -f 1
    yabai -m display --focus 1
    annihilateDesktops
    createDesktops 9
  else
    # chunkc tiling::monitor -f 1
    yabai -m display --focus 1
    annihilateDesktops
    createDesktops 3

    # chunkc tiling::monitor -f 2
    yabai -m display --focus 2
    annihilateDesktops
    createDesktops 4
  fi

  source ~/.yabairc
fi

# echo "$(chunkc tiling::query --desktop id):$(chunkc tiling::query --desktop mode) | length=5"
# echo "---"
# echo "Refresh desktops | bash='$0' param1=refresh terminal=false"
# echo "Restart chunkwm & skhd | bash='$0' param1=restart terminal=false"
# echo "Stop chunkwm & skhd | bash='$0' param1=stop terminal=false"
