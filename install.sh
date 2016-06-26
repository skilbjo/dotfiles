#!/usr/bin/env bash

drpbx="~/Dropbox/"
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
	ln -s $drpbx$bashrc $bashrc
	ln -s $drpbx$profile $profile
	ln -s $drpbx$vimrc $vimrc
	ln -s $drpbx$gitcfg $gitcfg
	ln -s $drpbx$gitign $gitign	
}

function vim {
	ln -s ~/Dropbox/dotfiles/plugins.vim ~/.vim/plugins.vim
	ln -s ~/Dropbox/dotfiles/plugin_settings.vim ~/.vim/plugin_settings.vim
	cp $drpbx/plugins.vim ~/.vim/plugins.vim
	cp $drpbx/plugin_settings.vim ~/.vim/plugin_settings.vim	
}

remove_existing
link_dropbox_dotfiles
vim

exit


