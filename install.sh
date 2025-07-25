if test ! $(which omz); then
  /bin/sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/HEAD/tools/install.sh)"
fi

# Check for Homebrew and install if we don't have it
if test ! $(which brew); then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

  echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> $HOME/.zprofile
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

brew tap homebrew/science
brew tap mongodb/brew
brew tap atlassian/homebrew-acli


brew install acli
brew install atlassian-cli
brew install awscli
brew install cocoapods
brew install flow
brew install google-cloud-sdk
brew install gradle
brew install imagemagick
brew install mas
brew install mongodb-community@7.0
brew install mongosh
brew install ngrok/ngrok/ngrok
brew install node
brew install python
brew install restic
brew install rclone
brew install redis
brew install scrcpy
brew install stats
brew install tmux
brew install tree
brew install suspicious-package
brew install youtube-dl
brew install watchman
brew install wget

brew tap caskroom/cask
brew install brew-cask

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
brew install --cask --appdir="/Applications" duti
brew install --cask --appdir="/Applications" dozer
brew install --cask --appdir="/Applications" dropbox
brew install --cask --appdir="/Applications" microsoft-edge
brew install --cask --appdir="/Applications" github-desktop
brew install --cask --appdir="/Applications" google-chrome
brew install --cask --appdir="/Applications" google-cloud-sdk
brew install --cask --appdir="/Applications" google-drive
brew install --cask --appdir="/Applications" java
brew install --cask --appdir="/Applications" jetbrains-toolbox
brew install --cask --appdir="/Applications" karabiner-elements
brew install --cask --appdir="/Applications" keycastr
brew install --cask --appdir="/Applications" koodo-reader
brew install --cask --appdir="/Applications" libreoffice
brew install --cask --appdir="/Applications" loom
brew install --cask --appdir="/Applications" ngrock
brew install --cask --appdir="/Applications" obsidian
brew install --cask --appdir="/Applications" postman
brew install --cask --appdir="/Applications" skype
brew install --cask --appdir="/Applications" slack
brew install --cask --appdir="/Applications" stats
brew install --cask --appdir="/Applications" telegram
brew install --cask --appdir="/Applications" unity-hub
brew install --cask --appdir="/Applications" vlc
brew install --cask --appdir="/Applications" whatsapp
brew install --cask --appdir="/Applications" zoom
brew install --cask --no-quarantine --appdir="/Applications" syntax-highlight
brew install --cask --appdir="/Applications" qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzipql webpquicklook suspicious-package && qlmanage -r

# Mac app store
# Use `mas list` for listing installed. Or `mas search APP_NAME` to get it's id
mas 'Be Focused Pro', id: 961632517
mas 'Dato', id: 1470584107
mas 'Divvy', id: 413857545
mas 'GarageBand', id: 682658836
mas 'GrandPerspective', id: 1111570163
mas 'Numbers', id: 409203825
mas 'Presentify', id: 1507246666
mas 'Slack', id: 803453959
mas 'The Unarchiver', id: 425424353

duti -s org.libreoffice.script xls all
duti -s org.libreoffice.script xlsx all
duti -s org.libreoffice.script csv all

git config --global user.name "Eli Atlas"
git config --global user.email "eli@eliatlas.com"

pip3 install markdown-anki-decks

npm install -g typescript
npm i -g @swc/cli @swc/core
npm install -g pm2
npm install -g openupm-cli
npm install -g @bchatard/alfred-jetbrains

# cleanup
brew cleanup --prune=all
rm -f -r /Library/Caches/Homebrew/*