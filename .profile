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

export EDITOR=vim

# colors for OSX
di=ex   # Directory
ln=dx   # Symbolic Link
so=dx   # Socket
pi=hx   # Pipe
ex=cx   # Executable
bd=hx   # Block (buffered) special file
cf=hx   # Character (unbuffered) special file
eu=hx   # Executable with setuid bit set
eg=hx   # Executable with setgid bit set
ds=hx   # Director writable to others, with sticky bit
dw=hx   # Director writable to others, without sticky bit
export LSCOLORS="$di$ln$so$pi$ex$bd$cf$eu$eg$ds$dw"

# Load the irregular .dotfiles
source_if_exists "$HOME/.aliases"				# Aliases
source_if_exists "$HOME/.aws"						# AWS config
source_if_exists "$HOME/.profilelocal"	# env variables


