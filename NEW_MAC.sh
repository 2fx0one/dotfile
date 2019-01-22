#!/bin/bash

#brew install
which brew && echo "brew has INSTALL" || /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew install wget
#brew install python3
#brew install neofetch
brew install vim --with-python3
brew install cmake
brew install mtr
brew install htop

brew install autojump
brew install tree
brew install ag
brew install proxychains-ng


#brew install neovim

brew install mit-scheme

#json pretty python -m json.tool
#brew install jq

#brew tap caskroom/cask


#brew tap caskroom/versions
brew cask install karabiner-elements

brew cask install the-unarchiver
brew cask install snipaste
brew cask install aria2gui
brew cask install iina

brew cask install sublime-text
brew cask install visual-studio-code
#brew cask install atom

#brew cask install java7
#brew cask install java8

brew cask install google-chrome
brew cask install firefox 
brew cask install wechat
brew cask install qq
brew cask install alfred
brew cask install hyperdock
brew cask install appcleaner
brew cask install sqluel-pro


#https://github.com/sindresorhus/quick-look-plugins
brew cask install qlcolorcode qlstephen qlmarkdown
brew cask quicklook-json qlimagesize webpquicklook suspicious-package 
brewcask quicklookase qlvideo provisionql quicklookapk
qlmanage -r
