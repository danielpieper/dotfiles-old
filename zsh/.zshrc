#
# User configuration sourced by interactive shells
#

# Change default zim location
export ZIM_HOME=${ZDOTDIR:-${HOME}}/.zim

# Start zim
[[ -s ${ZIM_HOME}/init.zsh ]] && source ${ZIM_HOME}/init.zsh

export PATH=$PATH:~/.config/composer/vendor/bin
# BEGIN work
#export PATH=$PATH:~/.gem/ruby/2.5.0/bin
# END work

# Docker
alias dc="docker-compose"
alias dm="docker-machine"
alias de="docker exec -it"
alias d="docker"

# Unix
alias ln='ln -v'
alias mkdir='mkdir -p'
alias l='ls'
alias ll='ls -lah'

alias vi="nvim"
alias vim="nvim"
alias mux="tmuxinator"

alias ap="ansible-playbook"
alias tf="terraform"

source <(hcloud completion zsh)
