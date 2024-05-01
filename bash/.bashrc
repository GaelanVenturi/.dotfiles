#
# ~/.bashrc
#

# If not running interactively, don't do anything
eval "$(starship init bash)"
[[ $- != *i* ]] && return

alias ls='ls -alr --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$'

export PATH="$HOME/bin/$:$PATH"
export PATH="$PATH:~/bin"
export PATH="$PATH:$HOME/scripts"

function gitcmp() {
	git add .
	git commit -m "$1"
	git push
}

# Created by `pipx` on 2024-04-25 18:40:33
export PATH="$PATH:/home/gventuri/.local/bin"
