#!/usr/bin/env bash

db="~/Documents/Dropbox/dotfiles"

function remove_existing {
	cd ~
	rm .bashrc ; rm .profile ;
	rm .gitconfig ; .gitignore ;
	rm .vimrc ; rm .aliases ;
	rm .tmux.conf  ; rm .tmux-osx.conf
}

function bash {
	ln -s $db/bash/bashrc ~/.bashrc
	ln -s $db/bash/profile ~/.profile
	ln -s $db/bash/aliases ~/.aliases
}

function git {
	ln -s $db/git/gitconfig ~/.gitconfig
	ln -s $db/git/gitignore ~/.gitignore
}

function vim {
	ln -s $db/vim/vimrc ~/.vimrc
	mkdir ~/.vim
	ln -s $db/vim/plugins.vim ~/.vim/plugins.vim
	ln -s $db/vim/plugin_settings.vim ~/.vim/plugin_settings.vim
	ln -s $db/vim/settings.vim ~/.vim/settings.vim
}

function lein {
	ln -s $db/lein ~/.lein
}

function tmux {
	ln -s $db/tmux/tmux.conf ~/.tmux.conf
	ln -s $db/tmux/tmux.conf ~/.tmux-osx.conf
	ln -s $db/tmux/osx.tmux ~/.tmux/osx.tmux
	ln -s $db/tmux/keybindings.tmux keybindings.tmux
	ln -s $db/tmux/settings.tmux settings.tmux
	ln -s $db/tmux/theme.tmux theme.tmux
	ln -s $db/tmux/plugins.tmux plugins.tmux
}

function sublime_text {
	echo "/Users/john.skilbeck/Library/Application Support/Sublime Text 3/Packages/User"
}


remove_existing
bash
git
vim
lein
tmux

exit


