#!/bin/zsh

######### Seph's .zshrc
##              _              
##      _______| |__  _ __ ___ 
##     |_  / __| '_ \| '__/ __|
##    _ / /\__ \ | | | | | (__ 
##   (_)___|___/_| |_|_|  \___|
##
## ----------------------------

## `.zshrc' is sourced in interactive shells. 
###
######### General Aliases, Functions, Assets
[ -f "$XDG_CONFIG_HOME/shell/aliases" ] && source "$XDG_CONFIG_HOME/shell/aliases" && zshell_aliases="shell_aliases"
[ -f "$XDG_CONFIG_HOME/shell/functions" ] && source "$XDG_CONFIG_HOME/shell/functions" && zshell_functions="shell_functions"
[ -f "$XDG_CONFIG_HOME/shell/assets" ] && source "$XDG_CONFIG_HOME/shell/assets" && zshell_assets="shell_assets"
###
######### Source: Zsh files
zsh_add_file "zsh-options"
# zsh_add_file "zsh-vim-mode"
zsh_add_file "zsh-prompt"
###
######### Tab Completion
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)
###
######### Enable colors
autoload -U colors && colors	# Load colors
stty stop undef		# Disable ctrl-s to freeze terminal.
###
######### History in cache directory:
## HISTFILE is used by interactive shells only.
HISTFILE="${XDG_CACHE_HOME:-$HOME/.cache}/zsh/history"
HISTSIZE=10000000
SAVEHIST=10000000
###
######### • Plugins
zsh_add_plugin "zsh-users/zsh-autosuggestions"
zsh_add_plugin "zsh-users/zsh-syntax-highlighting"
###
######### • Keybindings
bindkey -s '^u' 'zsh_refresh\n'
bindkey -s '^r' 'shell_help | less\n'
bindkey -s '^o' 'lfcd\n'
bindkey -s '^p' 'edit_text\n'
bindkey -s '^p' 'edit_text\n'
bindkey -s '^s' 'write_script\n'
bindkey -s '^]' 'music_daemon\n'
bindkey -s '^\' 'music_client\n'
###
######### • Shell Title
zshrc_loaded_files="${zshell_aliases} · ${zshell_functions} · ${zshell_assets}"
printf "%*s\n" $(((COLUMNS+${#zshrc_loaded_files})/2)) "$zshrc_loaded_files"
zsh_title
terminal-notifier \
    -title 'WELCOME TO THE Z SHELL' \
    -subtitle "A place of wonder and magic.." \
    -message "Hello, $USER.. may your visions find their tempo!" \
    -sound zsh-sound.aiff \
    -contentImage ~/.config/zsh/zsh_wizard.png
######### Ring Bell    
echo -e "\a"
#######