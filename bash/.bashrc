#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls -alr --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$'

eval "$(starship init bash)"

export PATH="$HOME/bin/$:$PATH"
export PATH="$PATH:~/bin"
export PATH="$PATH:$HOME/scripts"

function gitcmp() {
	git add .
	git commit -m "$1"
	git push
}
