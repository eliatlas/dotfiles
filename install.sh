#!/bin/bash
set -e

# Install oh-my-zsh if not present
if [ ! -d "$HOME/.oh-my-zsh" ]; then
  /bin/sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/HEAD/tools/install.sh)"
fi

# Check for Homebrew and install if we don't have it
if test ! $(which brew); then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

  echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> $HOME/.zprofile
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

brew tap mongodb/brew
brew tap atlassian/tap


brew install acli
brew install atlassian-cli
brew install awscli
brew install cocoapods
brew install coreutils
brew install direnv
brew install fd
brew install ffmpeg
brew install flow
brew install gh
brew install jq
brew install google-cloud-sdk
brew install gradle
brew install imagemagick
brew install mas
brew install mongodb-community@7.0
brew install mongosh
brew install ngrok/ngrok/ngrok
brew install node
brew install pyenv
brew install pyenv-virtualenv
brew install python
brew install restic
brew install rclone
brew install redis
brew install ripgrep
brew install scrcpy
brew install tmux
brew install uv
brew install tree
brew install yt-dlp
brew install watchman
brew install wget

brew install --cask --appdir="/Applications" adobe-acrobat
brew install --cask --appdir="/Applications" adobe-animate-cc
brew install --cask --appdir="/Applications" adobe-creative-cloud
brew install --cask --appdir="/Applications" adobe-illustrator-cc
brew install --cask --appdir="/Applications" adobe-photoshop-cc
brew install --cask --appdir="/Applications" alfred
brew install --cask --appdir="/Applications" alt-tab
brew install --cask --appdir="/Applications" anki
brew install --cask --appdir="/Applications" betterzip
brew install --cask --appdir="/Applications" calibre
brew install --cask --appdir="/Applications" chatgpt --no-quarantine
brew install --cask --appdir="/Applications" docker
brew install --cask --appdir="/Applications" duti
brew install --cask --appdir="/Applications" dozer
brew install --cask --appdir="/Applications" dropbox
brew install --cask --appdir="/Applications" microsoft-edge
brew install --cask --appdir="/Applications" github-desktop
brew install --cask --appdir="/Applications" google-chrome
brew install --cask --appdir="/Applications" iina
brew install --cask --appdir="/Applications" iterm2
brew install --cask --appdir="/Applications" google-cloud-sdk
brew install --cask --appdir="/Applications" google-drive
brew install --cask --appdir="/Applications" java
brew install --cask --appdir="/Applications" jetbrains-toolbox
brew install --cask --appdir="/Applications" karabiner-elements
brew install --cask --appdir="/Applications" keycastr
brew install --cask --appdir="/Applications" koodo-reader
brew install --cask --appdir="/Applications" libreoffice
brew install --cask --appdir="/Applications" loom
brew install --cask --appdir="/Applications" obsidian
brew install --cask --appdir="/Applications" postman
brew install --cask --appdir="/Applications" skype
brew install --cask --appdir="/Applications" slack
brew install --cask --appdir="/Applications" stats
brew install --cask --appdir="/Applications" telegram
brew install --cask --appdir="/Applications" unity-hub
brew install --cask --appdir="/Applications" visual-studio-code
brew install --cask --appdir="/Applications" vlc
brew install --cask --appdir="/Applications" whatsapp
brew install --cask --appdir="/Applications" zoom
brew install --cask --no-quarantine --appdir="/Applications" syntax-highlight
brew install --cask --appdir="/Applications" qlstephen qlmarkdown quicklook-json suspicious-package && qlmanage -r

# Mac App Store
# Use `mas list` for listing installed. Or `mas search APP_NAME` to get its id
mas install 961632517   # Be Focused Pro
mas install 1470584107  # Dato
mas install 413857545   # Divvy
mas install 682658836   # GarageBand
mas install 1111570163  # GrandPerspective
mas install 409203825   # Numbers
mas install 1507246666  # Presentify
mas install 803453959   # Slack
mas install 425424353   # The Unarchiver

duti -s org.libreoffice.script xls all
duti -s org.libreoffice.script xlsx all
duti -s org.libreoffice.script csv all

# Git config - set GIT_USER_NAME and GIT_USER_EMAIL env vars before running
if [ -n "$GIT_USER_NAME" ]; then
  git config --global user.name "$GIT_USER_NAME"
fi
if [ -n "$GIT_USER_EMAIL" ]; then
  git config --global user.email "$GIT_USER_EMAIL"
fi

pip3 install markdown-anki-decks

npm install -g typescript
npm install -g @swc/cli @swc/core
npm install -g pm2
npm install -g openupm-cli
npm install -g @bchatard/alfred-jetbrains
npm install -g yarn
npm install -g @anthropic-ai/claude-code
npm install -g @openai/codex
npm install -g eas-cli
npm install -g vercel
npm install -g firebase-tools

# cleanup
brew cleanup --prune=all