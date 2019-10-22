#!/usr/bin/env bash

# install Brew packages
brew install git
brew install wget
brew install watch
brew install pandoc
brew install nmap
brew install geoip
brew install ghostscript
brew install htop
brew install exiftool
brew install tree
brew install tmux
brew install gpg2
brew install rlwrap
brew install fish
brew install mkvtoolnix
brew install emacs --with-cocoa

brew cask install basictex
# install macOS packages in Applications/Computation folder
brew cask install --appdir="/Applications/Computation" r
brew cask install --appdir="/Applications/Computation" rstudio
# install macOS packages in Applications/Intel Power Gadget folder
brew cask install --appdir="/Applications/Intel Power Gadget" intel-power-gadget
# install macOS packages in Applications/Internet folder
brew cask install --appdir="/Applications/Internet" brave-browser
brew cask install --appdir="/Applications/Internet" firefox
brew cask install --appdir="/Applications/Internet" opera
brew cask install --appdir="/Applications/Internet" postbox
brew cask install --appdir="/Applications/Internet" skype
brew cask install --appdir="/Applications/Internet" slack
brew cask install --appdir="/Applications/Internet" spamsieve
# install macOS packages in Applications/Maintenance folder
brew cask install --appdir="/Applications/Maintenance" appdelete
brew cask install --appdir="/Applications/Maintenance" carbon-copy-cloner
brew cask install --appdir="/Applications/Maintenance" coconutbattery
brew cask install --appdir="/Applications/Maintenance" cocktail
brew cask install --appdir="/Applications/Maintenance" daisydisk
brew cask install --appdir="/Applications/Maintenance" drivedx
brew cask install --appdir="/Applications/Maintenance" istat-menus
brew cask install --appdir="/Applications/Maintenance" launchpad-manager
brew cask install --appdir="/Applications/Maintenance" onyx
# install macOS packages in Applications/Multimedia 
brew cask install --appdir="/Applications/Multimedia" acorn
# install macOS packages in Applications/Office folder
brew cask install --appdir="/Applications/Office" omnifocus
brew cask install --appdir="/Applications/Office" skim
# install macOS packages in Applications/Programming folder
brew cask install --appdir="/Applications/Programming" iterm2
brew cask install --appdir="/Applications/Programming" dash
brew cask install --appdir="/Applications/Programming" textmate
# install macOS packages in Applications/Security folder
brew cask install --appdir="/Applications/Security" micro-snitch
brew cask install --appdir="/Applications/Security" 1password
# install macOS packages in Applications/Sports folder
brew cask install --appdir="/Applications/Sports" rubitrack-pro


brew cask install --appdir="/Applications" sourcetree

brew cask install --appdir="/Applications/Security" viscosity
brew cask install --appdir="/Applications" visual-studio-code
brew cask install --appdir="/Applications" vlc
brew cask install --appdir="/Applications/Security" wifi-explorer
