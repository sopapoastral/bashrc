#
# ~/.bashrc
#

## ble.sh --Bash Line Editor--

[[ $- == *i* ]] && source ~/.local/share/blesh/ble.sh --noattach

clear
neofetch

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

## Git Prompt

. /usr/share/git/git-prompt.sh

## CLI-Prompt

PS1='\e[1;37m \W\e[0m \e[3;32m$(__git_ps1 " %s")\e[0m \e[0;35m󱞪\e[0m '
# PS1='\e[1;37m \W\e[0m \e[3;34mgit:(\e[0m\e[1;31m\e[0m\e[1;33m\e[0m\e[3;32m$(__git_ps1 " %s")\e[0m\e[3;34m)\e[0m \e[0;35m󱞪\e[0m '
PS2=" \e[0;35m󱞪\e[0m "
## Universal
alias ls='lsd'
alias lsa='lsd -la'
alias grep='grep --color=auto'
alias v='nvim'
alias cc='clear'
alias xx='exit'
alias bonsai='~/.local/bin/cbonsai'
alias matrix='/usr/local/bin/unimatrix -l a -c magenta'
alias so='. ~/.bashrc'
alias grep='grep --color=auto'
alias timer='arttime --nolearn -a kissingcats -b kissingcats2 --ac 3'

## Arch

pacman="/usr/bin/pacman"
sudopacman="sudo $pacman"
alias paci="$sudopacman -S"
alias pacu="$sudopacman -Syu"
alias pacr="$sudopacman -Rns"
alias pacs="$pacman -Ss"
alias pacinfo="$pacman -Si"
alias paca="$pacman -Q"
alias paclo="$pacman -Qdt"
alias pacdnc="$sudopacman -Scc"
alias pacfiles="$pacman -Ql"
alias pacexpl="$pacman -D --asexp"
alias pacimpl="$pacman -D --asdep"

# ble.sh thing
[[ ${BLE_VERSION-} ]] && ble-attach
