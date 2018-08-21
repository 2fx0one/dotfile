#!/bin/bash

#brew install
which brew && echo "brew has INSTALL" || /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"


brew install wget
brew install python
brew install vim --with-python3
brew install cmake
brew install mtr
brew install autojump
brew install tree

brew install mit-scheme

#json pretty python -m json.tool
brew install jq

#brew tap caskroom/cask


#https://github.com/sindresorhus/quick-look-plugins
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlimagesize webpquicklook suspicious-package quicklookase qlvideo provisionql quicklookapk
qlmanage -r

brew cask install chrome
#brew tap caskroom/versions
brew cask install karabiner-elements

brew cask install snipaste


brew cask install firefox 
brew cask install sublime
brew cask install atom
brew cask install vscode

#brew cask install java7
brew cask install java8

brew install wechat
brew install qq
