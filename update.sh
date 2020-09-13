#!/bin/bash

# Here, we want to update the dotfiles repo, and re-link everything to the home directory
pushd ~/dotfiles

git pull

# Clear out old rc files and re-link them.
rc_files=( inputrc gitconfig vimrc wgetrc bash_profile profile )

for file in "${rc_files[@]}"; do
  rm -rf ~/.${file}
  cp ~/dotfiles/${file} ~/.${file}
done
unset file

source ~/.bash_profile

popd
