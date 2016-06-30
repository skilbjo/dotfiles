#!/usr/bin/env bash

# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.

source_if_exists() {
    [[ -f $1 ]] && source $1
}

if [ -f ~/.bashrc ]; then 
    source ~/.bashrc 
fi

# ENV Variables
export EDITOR=vim
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Devel
source_if_exists /usr/local/bin/virtualenvwrapper.sh

# Load the irregular .dotfiles
source_if_exists "$HOME/.aliases"				# Aliases
source_if_exists "$HOME/.aws"						# AWS config
source_if_exists "$HOME/.profilelocal"	# env variables


