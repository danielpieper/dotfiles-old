#
# User configuration sourced by interactive shells
#

# Define Zim location
ZIM_HOME=${ZDOTDIR:-${HOME}}/.zim

# Start Zim
[[ -s ${ZIM_HOME}/zimfw.zsh ]] && source ${ZIM_HOME}/zimfw.zsh

# include zsecrets
[[ -s ${HOME}/.zsecrets ]] && source ${HOME}/.zsecrets

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LC_CTYPE=UTF-8

export PATH=$PATH:~/.composer/vendor/bin:~/.local/bin:~/go/bin:~/.gem/ruby/2.6.0/bin
# BEGIN work
#export PATH="/usr/local/opt/node@8/bin:/usr/local/sbin:$PATH"
#alias pc="~/projects/personio/perctl"
#alias wl="nvim ~/Documents/worklog.txt"
#
# END work
# BEGIN laptop
#source /usr/share/nvm/init-nvm.sh
# END laptop

# Docker
alias dc="docker-compose"
alias dm="docker-machine"
alias de="docker exec -it"
alias d="docker"
alias kc="kubectl"

# kitty ssh
alias ssh="kitty +kitten ssh"

# Unix
alias ln='ln -v'
alias mkdir='mkdir -p'
alias l='ls'
alias ll='ls -lah'

alias vi="nvim"
alias vim="nvim"
alias mux="tmuxinator"

alias xmm="xmodmap ~/.Xmodmap"

alias ap="ansible-playbook"
alias tf="terraform"
if [[ -x "bat" ]]
then
  alias cat="bat"
fi

if [[ -x "hcloud" ]]
then
  source <(hcloud completion zsh)
fi
if [[ -x "kubectl" ]]
then
  source <(kubectl completion zsh)
fi
