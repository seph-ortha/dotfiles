#!/bin/bash

######### Seph's .bashrc
##      _               _              
##     | |__   __ _ ___| |__  _ __ ___ 
##     | '_ \ / _` / __| '_ \| '__/ __|
##    _| |_) | (_| \__ \ | | | | | (__ 
##   (_)_.__/ \__,_|___/_| |_|_|  \___|
##                                     
## -----------------------------------
###
######### Conditional for loading shell-profile
case "$bash_profile" in
    loaded) : ;;
    *) [ -f "$HOME/.config/shell/profile" ] && . "$HOME/.config/shell/profile" && export bash_profile=loaded ;;
esac
###
######### Source global definitions
if [ -f /etc/bashrc ]; then
    # source /etc/bashrc
    export SHELL="/bin/bash"
    bash_etc=/etc/bashrc
    bash_rc=.bashrc
fi
###
######### Options
[ -r "${XDG_CONFIG_HOME}/bash/bash-options" ] && source "${XDG_CONFIG_HOME}/bash/bash-options"
###
######### Exports 
HISTSIZE=10000000
SAVEHIST=10000000 # Save in cache dir:
HISTFILE="~/.cache/bash/bash.history"
###
######### • Aliases, Functions, Assets
if [ -f "$XDG_CONFIG_HOME/shell/aliases" ]; then
    source "$XDG_CONFIG_HOME/shell/aliases" && shell_aliases=aliases
fi
if [ -f "$XDG_CONFIG_HOME/shell/functions" ]; then
    source "$XDG_CONFIG_HOME/shell/functions" && shell_funcs=functions
fi
# if [ -f "$XDG_CONFIG_HOME/shell/assets" ]; then
#     source "$XDG_CONFIG_HOME/shell/assets"
#     shell_assets=assets
# fi
###
######### Prompt
if [ -f "$XDG_CONFIG_HOME/bash/bash_prompt" ]; then
    source "$XDG_CONFIG_HOME/bash/bash_prompt" && confirm_prompt=prompt
fi
###
######### Startup files loaded
startup_files_loaded="· ${bash_etc} · ${bash_rc} · ${shell_aliases} · ${shell_funcs} · ${confirm_prompt} ·"
tput setaf 211; printf "%*s\n" $(((COLUMNS+${#startup_files_loaded})/2+6)) "$startup_files_loaded"; tput sgr0
echo "Welcome to Bash."  | terminal-notifier -sound dsbgact.aiff
echo -e "\a"
###
######### Shell Title
bash_title
### -----------------------------------alias config='/usr/bin/git --git-dir=/Users/seph_ortha/dotfiles --work-tree=/Users/seph_ortha'
