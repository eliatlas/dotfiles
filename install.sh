if test ! $(which omz); then
  /bin/sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/HEAD/tools/install.sh)"
fi

# Check for Homebrew and install if we don't have it
if test ! $(which brew); then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

  echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> $HOME/.zprofile
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi


defaults write com.apple.finder AppleShowAllFiles TRUE;killall Finder


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
brew install --cask --appdir="/Applications" anki
brew install --cask --appdir="/Applications" duti
brew install --cask --appdir="/Applications" github-desktop
brew install --cask --appdir="/Applications" google-chrome
brew install --cask --appdir="/Applications" intellij-idea
brew install --cask --appdir="/Applications" java
brew install --cask --appdir="/Applications" jetbrains-toolbox
brew install --cask --appdir="/Applications" libreoffice
brew install --cask --appdir="/Applications" skype
brew install --cask --appdir="/Applications" slack
brew install --cask --appdir="/Applications" stats
brew install --cask --appdir="/Applications" the-unarchiver
brew install --cask --appdir="/Applications" vlc
brew install --cask --appdir="/Applications" zoom



duti -s org.libreoffice.script xls all
duti -s org.libreoffice.script xlsx all
duti -s org.libreoffice.script csv all

# cleanup
brew cleanup --prune=all
rm -f -r /Library/Caches/Homebrew/*