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
[ -f "$XDG_CONFIG_HOME/shell/aliases" ] && source "$XDG_CONFIG_HOME/shell/aliases" && confirm_aliases="shell_aliases"
[ -f "$XDG_CONFIG_HOME/shell/functions" ] && source "$XDG_CONFIG_HOME/shell/functions" && confirm_functions="shell_functions"
[ -f "$XDG_CONFIG_HOME/shell/assets" ] && source "$XDG_CONFIG_HOME/shell/assets" && confirm_assets="shell_assets"
###
######### Source: Zsh files
add_zsh_file "zsh_options"
add_zsh_file "zsh_prompt"
add_zsh_file "zsh_functions"
###
######### Tab Completion
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)
###
######### Enable colors
autoload -U colors && colors
stty stop undef		# Disable ctrl-s to freeze terminal.
###
######### History in cache directory:
## HISTFILE is used by interactive shells only.
HISTFILE="${XDG_CACHE_HOME:-$HOME/.cache}/zsh/history"
HISTSIZE=10000000
SAVEHIST=10000000
###
######### • Plugins
add_zsh_plugin "zsh-users/zsh-autosuggestions"
add_zsh_plugin "zsh-users/zsh-syntax-highlighting"
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
test_src_files
zsh_title ; notifyWelcome
#########