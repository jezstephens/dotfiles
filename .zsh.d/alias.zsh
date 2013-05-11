alias vi='vim'
alias psl='ps -ely'
alias rm='rm -i'

if [[ $TERM == rxvt* ]]; then
  alias ssh='TERM=xterm-256color ssh'
fi
