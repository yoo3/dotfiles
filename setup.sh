#!/bin/bash

set -u


SCRIPT_DIR=$(cd $(dirname $0); pwd)

HOME_DIR=$HOME


echo "start setup..."

for f in $HOME_DIR/??*; do
    [ "$f" = ".git" ] && continue
    [ "$f" = ".gitconfig.local.template" ] && continue
    [ "$f" = ".require_oh-my-zsh" ] && continue
    [ "$f" = ".gitmodules" ] && continue

    ln -snfv $HOME_DIR/"$f" ~/
done

echo "setup was finished"
