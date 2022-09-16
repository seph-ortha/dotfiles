#!/bin/zsh

## --------- Seph's .zshenv
##              _                     
##      _______| |__   ___ _ ____   __
##     |_  / __| '_ \ / _ \ '_ \ \ / /
##    _ / /\__ \ | | |  __/ | | \ V / 
##   (_)___|___/_| |_|\___|_| |_|\_/  
##
### ----------------------------------

## `.zshenv' is sourced on all invocations of the shell,
## unless the -f option is set. It should contain commands
## to set the command search path, plus other important
## environment variables. `.zshenv' should not contain commands
## that produce output or assume the shell is attached to a tty.
# No need to export anything here, as .zshenv is 
# sourced for _every_ shell (unless invoked with zsh
# -f).

# --------- Zsh dotfiles outside of $HOME.
if [ -d "$HOME/.config/zsh" ]; then
    ZDOTDIR="$HOME/.config/zsh"
fi
