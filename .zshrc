autoload -U compinit promptinit
compinit
promptinit

# Prompt theme
prompt walters
prompt off

# Enable completion in the middle of a line
bindkey '^i' expand-or-complete-prefix

alias "ls=ls --color"
alias "vi=vim"
#alias "mplayer=mplayer -lavdopts lowres=1:fast:skiploopfilter=all"

TERM="xterm-color"
