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
     curl

# Switch to using brew-installed bash as default shell
if ! fgrep -q '/usr/local/bin/bash' /etc/shells; then
  echo '/usr/local/bin/bash' | sudo tee -a /etc/shells;
  chsh -s /usr/local/bin/bash;
fi;

# Install more recent versions of some macOS tools.
brew install vim --with-override-system-vi

# Remove outdated versions from the cellar.
brew cleanup

# Using SDKMAN to manage all java-related bits

echo "Configuring SDKMAN!"
if ! [ -x "$(command -v sdk)" ]; then
  curl -s "https://get.sdkman.io" | bash
  source ~/.sdkman/bin/sdkman-init.sh
fi
