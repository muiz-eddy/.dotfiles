#! /bin/bash

# Homebrew
which -s brew
if brew ls --versions myformula > /dev/null; then
  # install update
  brew update 
else 
  # install homebrew
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Neovim -- need to update for linux
which -s nvim
if which nvim != /opt/homebrew/bin/nvim; then
  # install neovim
  brew install neovim
else 
  echo "neovim is already installed"
fi

# GNUStow
if [[$? != 0]] ; then
  # Install stow
  brew install stow
else 
  echo "Stow is already installed"
fi


