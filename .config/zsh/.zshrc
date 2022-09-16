#!/bin/zsh

# --------- Seph's .zshrc
# -------------------------------
#              _              
#      _______| |__  _ __ ___ 
#     |_  / __| '_ \| '__/ __|
#    _ / /\__ \ | | | | | (__ 
#   (_)___|___/_| |_|_|  \___|
#
# -------------------------------
# https://zsh.sourceforge.io/Doc/Release/Files.html#Files
# .zshrc is sourced in interactive shells. 

# --------- Source Shell Files
addShellFile "aliases" && confirm_aliases="aliases"
addShellFile "functions" && confirm_functions="functions"

# --------- Source: Zsh files
addZshFile "zsh_options"
addZshFile "zsh_functions"

# --------- Tab Completion
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)

# --------- Git Prompt
autoload -Uz vcs_info

addZshFile "zsh_prompt" && confirm_zsh_prompt="zsh_prompt"
# --------- Enable colors
autoload -U colors && colors
stty stop undef		# Disable ctrl-s to freeze terminal.

# --------- History in cache directory:
## HISTFILE is used by interactive shells only.
HISTFILE="${XDG_CACHE_HOME:-$HOME/.cache}/zsh/history"
HISTSIZE=10000000
SAVEHIST=10000000

# --------- Plugins
addZshPlugin "zsh-users/zsh-autosuggestions"
addZshPlugin "zsh-users/zsh-syntax-highlighting"

# --------- Keybindings
bindkey -s '^r' 'zshRefresh\n'
bindkey -s '^e' 'lfcd\n'
bindkey -s '^v' 'vim .\n'
bindkey -s '^s' 'bash-script\n'
bindkey -s '^]' 'musicOn\n'
bindkey -s '^[' 'musicOff\n'
bindkey -s '^\' 'musicPlayer\n'
bindkey -s '^h' 'shellHelp\n'

# --------- Shell Title
zshTitle
