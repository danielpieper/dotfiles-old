#
# User configuration sourced by interactive shells
#

# Change default zim location
export ZIM_HOME=${ZDOTDIR:-${HOME}}/.zim

# Start zim
[[ -s ${ZIM_HOME}/init.zsh ]] && source ${ZIM_HOME}/init.zsh

export PATH=$PATH:~/.composer/vendor/bin:~/.local/bin
# BEGIN work
#export PATH="/usr/local/opt/node@8/bin:/usr/local/sbin:$PATH"
#alias pc="~/projects/personio/perctl"
#alias wl="nvim ~/Documents/worklog.txt"
#
# END work
# BEGIN laptop
#source /usr/share/nvm/init-nvm.sh
# END laptop

# Add secrets
[[ -s ${HOME}/.zsecrets ]] && source ${HOME}/.zsecrets

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
