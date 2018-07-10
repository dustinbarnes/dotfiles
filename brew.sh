#!/usr/bin/env bash

if ! [ -x "$(command -v brew)" ]; then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils

# Install some other useful utilities like `sponge`.
brew install binutils
brew install moreutils

# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils

# Install Bash 4.
# Note: don’t forget to add `/usr/local/bin/bash` to `/etc/shells` before
# running `chsh`.
brew install bash
brew install bash-completion2

# Switch to using brew-installed bash as default shell
if ! fgrep -q '/usr/local/bin/bash' /etc/shells; then
  echo '/usr/local/bin/bash' | sudo tee -a /etc/shells;
  chsh -s /usr/local/bin/bash;
fi;

# Install more recent versions of some macOS tools.
brew install vim --with-override-system-vi
brew install grep
brew install openssh
brew install screen

# Dev Tools
brew cask install java
brew install dex2jar
brew install groovy
brew install maven
brew install scala
brew install kotlin
brew install gradle
brew install jq
brew install yq
brew install nvm
brew install go --cross-compile-common
brew install pcre
brew install openssl
brew install gettext

# Install other useful binaries.
brew install ack
brew install git
brew install git-lfs
brew install imagemagick --with-webp
brew install lynx
brew install p7zip
brew install tree
brew install wget
brew install unrar
brew install xz

# My GUI Apps
brew cask install google-chrome
brew cask install dropbox
brew cask install atom
brew cask install cd-to
brew cask install flux
brew cask install vlc
brew cask install caffeine
brew cask install bettertouchtool
brew cask install jadengeller-helium

# Remove outdated versions from the cellar.
brew cleanup

