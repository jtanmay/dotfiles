#!/bin/bash

######### Intro ##########
#
# This script will install the dot files being configured in the script.
# Make the script executable before running.
#
#########################

# Variables
dir=~/dotfiles
olddir=~/dotfiles_old
files="bashrc bash_profile vim vimrc"

# Create backup for current files
echo "Creating folder to backup current files";
mkdir -p $olddir
echo "done..";

# Moving to dotfiles
echo "Moving to $dir";
cd $dir
echo "done..";

#move existing dotfiles to dotfiles_old and create symlinks from dotfiles
for file in $files; do
	echo "Moving any existing dotfiles from ~ to $olddir";
	mv ~/.$file $olddir
	echo "Create symlink...for $file"
	ln -s $dir/$file ~/.$file
done




