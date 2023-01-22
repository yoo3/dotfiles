#!/bin/bash

echo "make link"


cd $HOME/dotfiles/

echo $PWD

folders=`find . -type d \
	! -path "*/.git/*" \
	! -name .git`

# create symlinks (will overwrite old dotfiles)
for folder in ${folders}; do
    #echo "Creating symlink to $file in home directory."
    mkdir -p $HOME/${folder#./} 2>/dev/null 
done

files=`find . \
  -type f \
  ! -path "./.git/*" \
  ! -name ./.gitignore \
  ! -name install.sh`      

# create symlinks (will overwrite old dotfiles)
for file in ${files}; do
    #echo "Creating symlink to $file in home directory."
    ln -sf $PWD/${file#./} $HOME/${file#./} 
done
