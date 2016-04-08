#!/usr/bin/env bash

# This file is meant to be downloaded from github directly, and then run.
# It doesn't assume the rest of the dotfiles stuff is fetched or anything.

# Run it like so:
#    curl -s https://raw.githubusercontent.com/dustinbarnes/dotfiles/bootstrap.sh | bash

pushd ~

# Clone my dotfiles
if [ ! -d "dotfiles" ]; then
  git clone https://github.com/dustinbarnes/dotfiles.git
else
  pushd dotfiles
  git pull
  popd
fi

# Install homebrew...
if ! [ -x "$(command -v brew)" ]; then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

  # Some GUI apps
  brew cask install google-chrome
  brew cask install dropbox
  brew cask install atom
  brew cask install cd-to
  brew cask install flux
  brew cask install java
  brew cask install vagrant
  brew cask install virtualbox
  brew cask install vlc
  brew cask install slack
  brew cask install caffeine
  brew cask install bettertouchtool

  # And some CLI apps, tools, etc
  brew install beecrypt
  brew install berkeley-db
  brew install cmake
  brew install jq
  brew install graphviz
  brew install groovy
  brew install maven
  brew install p7zip
  brew install nvm
  brew install tuntap
  brew install unrar
  brew install wget
  brew install rpm
  brew install rpm2cpio
  brew install ssh-copy-id
  brew install pcre
  brew install openssl
  brew install binutils
  brew install go
  brew install gettext
fi

~/dotfiles/osx.sh

