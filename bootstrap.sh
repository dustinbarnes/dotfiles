#!/usr/bin/env bash

# This file is meant to be downloaded from github directly, and then run.
# It doesn't assume the rest of the dotfiles stuff is fetched or anything.

# Run it like so:
#    curl -s https://raw.githubusercontent.com/dustinbarnes/dotfiles/master/bootstrap.sh | bash

pushd ~

# Clone my dotfiles
if [ ! -d "dotfiles" ]; then
  git clone https://github.com/dustinbarnes/dotfiles
else
  pushd dotfiles
  git pull
  popd
fi

# Do Homebrew
~/dotfiles/brew.sh

# Set OSX Prefs
~/dotfiles/osx.sh

# Run Update
~/dotfiles/update.sh
