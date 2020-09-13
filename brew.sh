#!/usr/bin/env bash

if ! [ -x "$(command -v brew)" ]; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
fi

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

brew install bash bash-completion2 coreutils grep openssh openssl screen \
     jq yq pcre gettext git git-extras git-lfs p7zip tree wget unrar xz \
     curl htop httpie nodejs svn

# Switch to using brew-installed bash as default shell
if ! fgrep -q '/usr/local/bin/bash' /etc/shells; then
  echo '/usr/local/bin/bash' | sudo tee -a /etc/shells;
  chsh -s /usr/local/bin/bash;
fi;

# Install more recent versions of some macOS tools.
brew install vim --with-lua --with-override-system-vi

# GUI Apps
brew cask install cd-to-terminal clipy caffeine bettertouchtool slack \
    docker iterm2 whatsapp obsidian postman vlc

# Remove outdated versions from the cellar.
brew cleanup

# Using SDKMAN to manage all java-related bits

echo "Configuring SDKMAN!"
if ! [ -x "$(command -v sdk)" ]; then
  curl -s "https://get.sdkman.io?rcupdate=false" | bash
fi

sdk install java 8.0.265.hs
sdk install java 11.0.8.hs
sdk install maven 3.6.3
sdk install gradle 6.6.1

sdk use java 8.0.265.hs
