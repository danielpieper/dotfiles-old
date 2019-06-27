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
  desktops=$(chunkc tiling::query --desktops-for-monitor $(chunkc tiling::query --monitor id) | wc -w | xargs)
  for n in $(seq $desktops); do
    chunkc tiling::desktop --annihilate
  done
}

function createDesktops() {
  number=$1
  for n in $(seq $number); do
    chunkc tiling::desktop --create
  done
}


if [[ "$1" = "stop" ]]; then
  brew services stop chunkwm
  brew services stop skhd
fi

if [[ "$1" = "restart" ]]; then
  brew services restart chunkwm
  brew services restart skhd
fi

if [[ "$1" = "refresh" ]]; then
  monitor_count=$(chunkc tiling::query --monitor count)
  if [[ $monitor_count -eq 1 ]]; then
    chunkc tiling::monitor -f 1
    annihilateDesktops
    createDesktops 8
  else
    chunkc tiling::monitor -f 1
    annihilateDesktops
    createDesktops 3

    chunkc tiling::monitor -f 2
    annihilateDesktops
    createDesktops 4
  fi

  chunkc tiling::rule --owner \"Google Chrome\" --desktop 1
  chunkc tiling::rule --owner \"kitty\" --desktop 2
  chunkc tiling::rule --owner \"Slack\" --desktop 4
  chunkc tiling::rule --owner \"Spotify\" --desktop 3
  chunkc tiling::rule --owner \"Postman\" --desktop 3

  chunkc tiling::rule --name "~/projects/personio" --desktop 5
  chunkc tiling::rule --name "~/projects/attribute-service/app" --desktop 6
  chunkc tiling::rule --owner \"Code\" --desktop 7
  chunkc tiling::rule --owner \"TablePlus\" --desktop 8

  chunkc tiling::rule --owner \"PhpStorm\" --except "~/projects/" --state float &
  chunkc tiling::rule --owner 'PhpStorm' --except '\[.+\]' --state float &
  chunkc tiling::rule --owner Finder --name Copy --state float
  chunkc tiling::rule --owner \"App Store\" --state float
  chunkc tiling::rule --owner \"Activity Monitor\" --state float
  chunkc tiling::rule --name \"System Preferences\" --state float
  chunkc tiling::rule --name \"Reminders\" --state float
fi

echo "$(chunkc tiling::query --desktop id):$(chunkc tiling::query --desktop mode) | length=5"
echo "---"
echo "Refresh desktops | bash='$0' param1=refresh terminal=false"
echo "Restart chunkwm & skhd | bash='$0' param1=restart terminal=false"
echo "Stop chunkwm & skhd | bash='$0' param1=stop terminal=false"
