#! /bin/bash

# get the absolute path of our dotfiles repository
DIR=$(cd `dirname $0` && pwd)

# overwrite existing symlinks if necessary
# write any additional symlinks for other source files in the form
# ln -sf $DIR/${dotfile you want to link} ${dotfile you want to overwrite}

ln -sf $DIR/.bashrc ~/.bashrc
ln -sf $DIR/.vimrc ~/.vimrc
ln -sf $DIR/.inputrc ~/.inputrc
ln -sf $DIR/.zshrc ~/.zshrc

# if the dotfile needs to be sourced source it
source ~/.bashrc
