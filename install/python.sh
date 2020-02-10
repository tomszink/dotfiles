#!/usr/bin/env bash
# Python related installations like pipx
set -o errexit
set -o pipefail
set -o nounset
set -x

pipx_packages=(
  black
  flake8
  gitlint
  pipenv
  tox
  yamllint
)

for pipx_package in "${pipx_packages[@]}"; do
  if [[ $(command -v $pipx_package) ]]
  then
    pipx upgrade "$pipx_package"
  else
    pipx install "$pipx_package"
  fi
done
