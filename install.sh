#!/bin/bash

echo "make link"


cd $HOME/dotfiles/

echo $PWD



# create symlinks (will overwrite old dotfiles)
for file in ${files}; do
    echo "Creating symlink to $file in home directory."
    #ln -sf ${dotfiledir}/.${file} ${homedir}/.${file}
done
