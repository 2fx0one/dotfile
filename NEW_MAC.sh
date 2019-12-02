#!/bin/bash

#on my zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

#brew install
which brew && echo "brew has INSTALL" || /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew install wget
#brew install python3
#brew install neofetch
brew install vim
brew install cmake
brew install mtr
brew install htop

brew install autojump
brew install tree
brew install ag
brew install proxychains-ng

brew install mit-scheme

#json pretty python -m json.tool
brew install jq

# just for fun
brew install cmatrix


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
brew cask install sequel-pro
brew cask install keycastr #右下角显示快捷键
brew cask install mongodb # mongdb.app

#https://github.com/sindresorhus/quick-look-plugins
brew cask install qlcolorcode qlstephen qlmarkdown
brew cask install quicklook-json qlimagesize webpquicklook suspicious-package 
brew cask install quicklookase qlvideo provisionql quicklookapk
qlmanage -r
