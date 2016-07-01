#!/usr/bin/env bash

drpbx="~/Documents/Dropbox/dotfiles"
bashrc=".bashrc"
profile=".profile"
vimrc=".vimrc"
gitcfg=".gitconfig"
gitign=".gitignore"

function remove_existing {
	cd ~

	rm $bashrc ; rm $profile ; rm $gitcfg ; rm $vimrc	
}

function link_dropbox_dotfiles {
	## Dotfiles
	ln -s $drpbx/$bashrc $bashrc
	ln -s $drpbx/$profile $profile
	ln -s $drpbx/.aliases ~/.aliases
	ln -s $drpbx/$vimrc $vimrc
	ln -s $drpbx/$gitcfg $gitcfg
	ln -s $drpbx/$gitign $gitign	
}

function vim {
	ln -s $drpbx/plugins.vim ~/.vim/plugins.vim
	ln -s $drpbx/plugin_settings.vim ~/.vim/plugin_settings.vim
	ln -s $drpbx/settings.vim ~/.vim/settings.vim
}

function clojure {
	ln -s $drpbx/.profiles.clj ~/.lein/profiles.clj
}

function tmux {
	ln -s $drpbx.tmux.conf ~/.tmux.conf
	ln -s ~/Dropbox/dotfiles/.tmux-osx.conf .tmux-osx.conf
}

function sublime_text {
	echo "/Users/john.skilbeck/Library/Application Support/Sublime Text 3/Packages/User"
}


remove_existing
link_dropbox_dotfiles
vim
tmux

exit


