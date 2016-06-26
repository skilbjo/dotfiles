#!/usr/bin/env bash

folder="~/Dropbox/"
bashrc=".bashrc"
profile=".profile"
gitcfg=".gitconfig"
vimrc=".vimrc"


cd ~

rm $bashrc ; rm $profile ; rm $gitcfg ; rm $vimrc

ln -s $folder$bashrc $bashrc
ln -s $folder$profile $profile
ln -s $folder$vimrc $vimrc
ln -s $folder$gitcfg $gitcfg
ln -s $folder$gitign $gitign


