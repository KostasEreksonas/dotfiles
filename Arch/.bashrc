#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

export PS1="\[$(tput bold)\]\[$(tput setaf 1)\][\[$(tput setaf 3)\]\u\[$(tput setaf 2)\]@\[$(tput setaf 4)\]\h \[$(tput setaf 5)\]\W\[$(tput setaf 1)\]]\[$(tput setaf 7)\]\\$ \[$(tput sgr0)\]"

RANGER_LOAD_DEFAULT_RC=FALSE

# Aliases

#  -----------
# | Bluetooth |
#  -----------

# Turn bluetooth on
alias blthon='systemctl start bluetooth.service'

# Turn bluetooth off
alias blthoff='systemctl stop bluetooth.service'

#  -------
# | Wi-Fi |
#  -------

# Connect to wifi
alias connect_wifi='nmcli device wifi connect SSID password `pass wifi/wifi`'

# Connect to hotspot
alias connect_hotspot='nmcli device wifi connect SSID password `pass wifi/hotspot`'

# List networks
alias list_networks='nmcli device wifi list'

#  -----------------------------
# | Virtualbox virtual machines |
#  -----------------------------

# Start Arch Linux virtual machine
alias start_Arch='vboxmanage startvm Arch'

# Start Windows 10 virtual machine
alias start_Win10='vboxmanage startvm Windows_10'

#  -------
# | Games |
#  -------

# Sniper Elite 3
alias sniperelite3='cd ~/Wine/SniperElite3/drive_c/Program\ Files\ \(x86\)/Sniper\ Elite\ 3/bin/ && WINEPREFIX=~/Wine/SniperElite3/ WINEARCH=win64 mangohud --dlsym wine SniperElite3.exe'

# NBA 2K19
alias nba2k19='cd ~/Wine/NBA2K19/drive_c/Program\ Files/NBA\ 2K19/ && WINEPREFIX=~/Wine/NBA2K19/ WINEARCH=win64 mangohud --dlsym wine NBA2K19.exe'

# Moorhuhn Kart 2
alias Moorhuhn_Kart_2='cd ~/Wine/MoorhuhnKart2/drive_c/Phenomedia AG/Moorhuhn\ Kart\ 2\ XXL/ && WINEPREFIX=~/Wine/MoorhuhnKart2 WINEARCH=win32 wine MHK2-XXL.exe'

# Moorhuhn 2
alias Moorhuhn_2='cd ~/Wine/MoorhuhnKart2/drive_c/Program\ Files/Moorhuhn\ 2/ && WINEPREFIX=~/Wine/MoorhuhnKart2 WINEARCH=win32 wine Moorhuhn2.exe'

# Sallys Salon
alias Sallys_Salon='cd ~/Wine/SallysSalon/drive_c/Program\ Files\ \(x86\)/Sallys\ Salon/ && WINEPREFIX=~/Wine/SallysSalon WINEARCH=win64 wine SallySalon.exe'

# HOMM3
alias HOMM3='cd ~/Wine/HOMM3/drive_c/GOG\ Games/Heroes\ of\ Might\ and\ Magic\ 3\ Complete/ && WINEPREFIX=~/Wine/HOMM3 WINEARCH=win32 wine Heroes3.exe'
