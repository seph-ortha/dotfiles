#!/bin/sh
:
## --------- • .profile -- Commands executed by a login Bourne shell
##        _                          __ _ _      
##    ___| |__      _ __  _ __ ___  / _(_) | ___ 
##   / __| '_ \    | '_ \| '__/ _ \| |_| | |/ _ \
##   \__ \ | | |  _| |_) | | | (_) |  _| | |  __/
##   |___/_| |_| (_) .__/|_|  \___/|_| |_|_|\___|
##                 |_|                           
## 
## ----------------------------------
[ "$0" = "bash" ] && . ~/.config/bash/.bash_profile && exit
######### • PATH
PATH=$PATH:$HOME/bin:.
###
######### • Variables
EDITOR=vim
###
######### • Exports
export PATH EDITOR
###
######### • Source the .bashrc
# if [ -f ~/.bashrc ]; then source ~/.bashrc; fi
###

echo "(SH) .profile loaded.."
## ----------------------------------