#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

# aliases

alias ls = 'ls -alr'
alias vim = 'nvim'

eval "$(starship init bash)"
