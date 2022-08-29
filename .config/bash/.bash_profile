#!/bin/bash

## --------- • .bash_profile for the Bourne-Again Shell
##      _               _                           __ _ _      
##     | |__   __ _ ___| |__       _ __  _ __ ___  / _(_) | ___ 
##     | '_ \ / _` / __| '_ \     | '_ \| '__/ _ \| |_| | |/ _ \
##    _| |_) | (_| \__ \ | | |    | |_) | | | (_) |  _| | |  __/
##   (_)_.__/ \__,_|___/_| |_|____| .__/|_|  \___/|_| |_|_|\___|
##                          |_____|_|                           
##
## --------------------------------------------------------------
## Invoked as an interactive login shell or with --login
## For "bash specific" commands which will only work in bash.
## --------------------------------------------------------------

######### • Load shell profile
if [ -f "$HOME/.config/shell/profile" ]; then
    source "$HOME/.config/shell/profile" && export bash_profile=loaded
fi
###
######### • Load .bashrc
if [ -f "$XDG_CONFIG_HOME/bash/.bashrc" ]; then
    source "$XDG_CONFIG_HOME/bash/.bashrc" ## Load .bashrc
fi
######### • EXPORTS
export HISTSIZE=10000000
export SAVEHIST=10000000 # Save in cache dir:
export HISTFILE="~/.cache/bash/bash.history"
###
######### • Load .profile
# if [ -f ~/.profile ]; then
#     source "$HOME/.profile"
#     printf "(SH) .profile loaded..\n"
# fi
######### • Shell Login Title
# bash_login_title
tput setaf 105; figlet -w $COLUMNS -c -f small .bash_profile; tput setaf 78
## --------------------------------------------------------------
