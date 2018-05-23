#!/bin/bash

#brew install
which brew && echo "brew has INSTALL" || /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"


brew install wget vim cmake mtr

brew tap caskroom/cask

brew cask install chrome

#https://github.com/sindresorhus/quick-look-plugins
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlimagesize webpquicklook suspicious-package quicklookase qlvideo provisionql quicklookapk

qlmanage -r

brew tap caskroom/versions
brew install java7 java8


brew cask install firefox 
