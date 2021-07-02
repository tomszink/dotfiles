#!/usr/bin/env bash
set -o errexit
set -o pipefail
set -o nounset
set -x

## Install brew if needed
# ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew update

## Install brew packages
brew_packages=(
  ag
  git
  gh
  htop
  pipx
  pyenv
  shellcheck
  tig
  tree
  wget
)

for brew_package in "${brew_packages[@]}"; do
  if [[ $(command -v $brew_package) ]]
  then
    brew upgrade "$brew_package"
  else
    brew install "$brew_package"
  fi
done

## Install brew cask packages
brew_cask_packages=(
  keepassxc
  rectangle
)

for brew_cask_package in "${brew_cask_packages[@]}"; do
  if brew ls --casks $brew_cask_package &> /dev/null
  then
    # package installed already with brew casks, but check for update
    brew upgrade --cask "$brew_cask_package"
  else
    brew install --cask "$brew_cask_package"
  fi
done

brew cleanup
