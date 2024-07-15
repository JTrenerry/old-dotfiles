#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

# Sets PROMPT_DIRTRIM for every shell login
PROMPT_DIRTRIM=1

# Colours
# Define colors
purple='\e[0;35m'
pink='\e[0;95m'
green='\e[0;32m'
reset='\e[0;m'

# Set prompt colors
PS1="\[$purple\]\u@\h \[$pink\]\w \[$green\]\$ \[$reset\]"

# Optional: Change background and text color
echo -e "\e]11;#000000\a"  # Set background color to black
echo -e "\e]10;#FFFFFF\a"  # Set text color to white

# Created by `pipx` on 2024-02-26 05:36:44
export PATH="$PATH:/home/Jackson/.local/bin"

export GPG_TTY=$(tty)

LS_COLORS=$LS_COLORS:'di=0;35:' ; export LS_COLORS

# 
# Aliases
#
alias ls='ls --color=auto'
alias Please='sudo'
alias vi='nvim'
alias vim='nvim'
alias nano='nvim'

alias moss='ssh s4743951@moss.labs.eait.uq.edu.au'
alias piplup='ssh jackson@192.168.1.219'
