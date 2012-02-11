# Check for an interactive session
[ -z "$PS1" ] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

set -o vi

export PATH=~/bin:$PATH

source ~/.bash_alias
