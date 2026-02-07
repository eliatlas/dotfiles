#!/bin/bash
set -e

echo "==> Updating Homebrew"
brew update
brew upgrade
brew upgrade --cask --greedy

echo "==> Updating Mac App Store apps"
mas upgrade

echo "==> Updating npm global packages"
npm update -g

echo "==> Updating pip packages"
pip3 list --outdated --format=json | python3 -c "import json, sys; print('\n'.join([p['name'] for p in json.load(sys.stdin)]))" | xargs -n1 pip3 install -U 2>/dev/null || true

echo "==> Updating oh-my-zsh"
"$ZSH/tools/upgrade.sh"

echo "==> Updating tldr cache"
command -v tldr >/dev/null && tldr --update || true

echo "==> Cleanup"
brew cleanup --prune=all
npm cache clean --force 2>/dev/null || true

echo "==> Done!"
