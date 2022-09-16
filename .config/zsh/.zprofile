#!/bin/zsh

######### Seph's .zprofile. Runs on login.
##                           __ _ _      
##      _____ __  _ __ ___  / _(_) | ___ 
##     |_  / '_ \| '__/ _ \| |_| | |/ _ \
##    _ / /| |_) | | | (_) |  _| | |  __/
##   (_)___| .__/|_|  \___/|_| |_|_|\___|
##         |_|                           
##
### -------------------------------------

## .zprofile is meant as an alternative to `.zlogin' for ksh fans
## the two are not intended to be used together, although this could
## certainly be done if desired. 
# Only login shells read .zprofile and most Linux 
# terminals don’t start login shells by default.
# Apple’s Terminal.app, however, _always_ starts a 
# login shell whenever you open a new window or tab.
## All vars needed by external commands should be exported. Exports
## should be done in .zprofile only, to set them in the login shell.
## Once they are exported to the environment, all other shells will
## auto-import them. Despite the word env in its name, .zshenv is not
## the place where you should put any env vars.
## Also, if you set $PATH in ~/.zshenv, then it can easily be overridden
## by one of the /etc/z* files, as happened with $HISTFILE. In general,
## the only thing you ever need to put in in .zshenv is $ZDOTDIR. The
## only reason I added XDG vars there, too, is because it’s, in this
## case, convenient for reuse.
###
######### • Load shell profile
if [ -f "$HOME/.config/shell/profile" ]; then
    source "$HOME/.config/shell/profile" && zshell_profile="shell_profile"
fi
###
printf "%s - %s" "$zshell_profile" "$zshell_exports"