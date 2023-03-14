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

brew install awscli
brew install flow
brew install google-cloud-sdk
brew install gradle
brew install mas
brew install mongodb
brew install node
brew install python
brew install rclone
brew install scrcpy
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
brew install --cask --appdir="/Applications" duti
brew install --cask --appdir="/Applications" dropbox
brew install --cask --appdir="/Applications" github-desktop
brew install --cask --appdir="/Applications" google-chrome
brew install --cask --appdir="/Applications" google-drive
brew install --cask --appdir="/Applications" intellij-idea
brew install --cask --appdir="/Applications" java
brew install --cask --appdir="/Applications" jetbrains-toolbox
brew install --cask --appdir="/Applications" libreoffice
brew install --cask --appdir="/Applications" ngrock
brew install --cask --appdir="/Applications" obsidian
brew install --cask --appdir="/Applications" skype
brew install --cask --appdir="/Applications" slack
brew install --cask --appdir="/Applications" stats
brew install --cask --appdir="/Applications" telegram
brew install --cask --appdir="/Applications" unity-hub
brew install --cask --appdir="/Applications" vlc
brew install --cask --appdir="/Applications" zoom




# Mac app store
mas 'Be Focused Pro', id: 961632517
mas 'Dato', id: 1470584107
mas 'Divvy', id: 413857545
mas 'GarageBand', id: 682658836
mas 'Numbers', id: 409203825
mas 'Presentify', id: 1507246666
mas 'Slack', id: 803453959
mas 'The Unarchiver', id: 425424353


defaults write com.apple.finder AppleShowAllFiles TRUE;killall Finder
duti -s org.libreoffice.script xls all
duti -s org.libreoffice.script xlsx all
duti -s org.libreoffice.script csv all


defaults write com.apple.finder AppleShowAllFiles TRUE;killall Finder

# cleanup
brew cleanup --prune=all
rm -f -r /Library/Caches/Homebrew/*