#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

#  ---------
# | Aliases |
#  ---------

alias connectWifi='nmcli device wifi connect WirelessNet password `pass wifi/WirelessNet`'
alias connectHotspot='nmcli device wifi connect Redmi Note 9 password `pass wifi/Redmi9`'
alias listNetworks="nmcli device wifi list"
#alias startWin10="virsh --connect qemu:///system start win10 && virt-manager --connect qemu:///system --show-domain-console win10"
#alias startKali="virsh --connect qemu:///system start debian12 && virt-manager --connect qemu:///system --show-domain-console debian12"
#alias startArch="virsh --connect qemu:///system start archlinux && virt-manager --connect qemu:///system --show-domain-console archlinux"

#  ---------
# | Exports |
#  ---------

export PATH=$PATH:/home/kostas/.local/bin # Add custom binary path
export TERMINAL=st # Export $TERMINAL variable
export EDITOR=nvim
export -p SSLKEYLOGFILE=~/ssl-key.log # Log ssl keys

#  ---------
# | Sources |
#  ---------

source ~/pureline/pureline ~/.pureline.conf

#  ------
# | Misc |
#  ------

# Autostart X on login
if [[ -z $DISPLAY && $XDG_VTNR -eq 1 ]]; then
	startx
fi
