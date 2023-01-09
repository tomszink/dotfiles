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
  k9s
  kubectl
  keepassxc
  pipx
  pyenv
  rectangle
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

brew cleanup
