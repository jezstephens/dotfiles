alias psl='ps -ely'
alias rm='rm -i'
alias vi='vim'
alias svi='EDITOR=vim sudoedit'
alias r='ranger'
alias p='htop'

if [[ $TERM == rxvt* ]]; then
  alias ssh='TERM=xterm-256color ssh'
fi

alias gs='git status -sb'
alias gsh='git show'
alias grb='git rebase'

if (( $+commands[hub] )); then
  alias git='hub'
fi

alias gems='gem search --remote'

alias base='cd ~/src/maj/meet-and-jam'

alias wifi-menu='sudo wifi-menu'
alias wifi='wifi-menu'
