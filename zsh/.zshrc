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
#alias pc="~/projects/perctl"
#alias wl="nvim ~/worklog.txt"
# END work
# BEGIN laptop
#source /usr/share/nvm/init-nvm.sh
#function homestead() {
#    ( cd ~/Homestead && vagrant $* )
#}
# END laptop

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

if [[ -x "hcloud" ]]
then
  source <(hcloud completion zsh)
fi
if [[ -x "kubectl" ]]
then
  source <(kubectl completion zsh)
fi
