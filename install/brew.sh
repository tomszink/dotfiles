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
  jq
  k9s
  keepassxc
  kubectl
  pipx
  pyenv
  rectangle
  shellcheck
  tig
  tree
  watch
  wget
  zsh
  zsh-history-substring-search
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
