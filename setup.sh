#! /usr/bin/env bash

set -ex

vimrc_path="$HOME/.vimrc"

if [ -f $vimrc_path ]; then
    mv $vimrc_path $vimrc_path.bak
fi

ln -sf `pwd`/vimrc $vimrc_path

echo "$vimrc_path file symlinked to `pwd`/vimrc."
