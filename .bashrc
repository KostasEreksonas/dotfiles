#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

RANGER_LOAD_DEFAULT_RC=FALSE

alias blthon='systemctl start bluetooth.service'
alias blthoff='systemctl stop bluetooth.service'
