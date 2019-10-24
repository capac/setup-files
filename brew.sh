#!/usr/bin/env bash

mkdir -p Applications/{Computation, Intel Power Gadget, Internet, Maintenance, Multimedia/{Graphics}, Office, Programming, Security, Sports}

# install Brew packages
brew cask install basictex
brew install emacs --with-cocoa
brew install exiftool
brew install fish
brew install geoip
brew install ghostscript
brew install git
brew install gpg2
brew install htop
brew install mkvtoolnix
brew install nmap
brew install pandoc
brew install rlwrap
brew install tmux
brew install tree
brew install watch
brew install wget

# install macOS packages in Applications folder
brew cask install --appdir="/Applications" alfred
brew cask install --appdir="/Applications" backblaze
brew cask install --appdir="/Applications" dropbox
brew cask install --appdir="/Applications" fantastical
brew cask install --appdir="/Applications" little-snitch
brew cask install --appdir="/Applications" macupdater
brew cask install --appdir="/Applications" malwarebytes
brew cask install --appdir="/Applications" nextcloud
brew cask install --appdir="/Applications" ntfs-mac
brew cask install --appdir="/Applications" postgres
brew cask install --appdir="/Applications" psequel
brew cask install --appdir="/Applications" the-unarchiver

# install macOS packages in Applications/Computation folder
brew cask install --appdir="/Applications/Computation" r
brew cask install --appdir="/Applications/Computation" rstudio

# install macOS packages in Applications/Intel Power Gadget folder
brew cask install --appdir="/Applications/Intel Power Gadget" intel-power-gadget

# install macOS packages in Applications/Internet folder
brew cask install --appdir="/Applications/Internet" brave-browser
brew cask install --appdir="/Applications/Internet" firefox
brew cask install --appdir="/Applications/Internet" forklift
brew cask install --appdir="/Applications/Internet" opera
brew cask install --appdir="/Applications/Internet" qbittorrent
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
brew cask install --appdir="/Applications/Multimedia/Graphics" acorn
brew cask install --appdir="/Applications/Multimedia/Graphics" xee
brew cask install --appdir="/Applications/Multimedia" handbrake
brew cask install --appdir="/Applications/Multimedia" vlc
brew cask install --appdir="/Applications/Multimedia" xld

# install macOS packages in Applications/Office folder
brew cask install --appdir="/Applications/Office" anki
brew cask install --appdir="/Applications/Office" calibre
brew cask install --appdir="/Applications/Office" devonagent
brew cask install --appdir="/Applications/Office" devonthink
brew cask install --appdir="/Applications/Office" omnifocus
brew cask install --appdir="/Applications/Office" skim

# install macOS packages in Applications/Programming folder
brew cask install --appdir="/Applications/Programming" brackets
brew cask install --appdir="/Applications/Programming" dash
# brew cask install --appdir="/Applications/Programming" iterm2
brew cask install --appdir="/Applications/Programming" macvim
brew cask install --appdir="/Applications/Programming" pycharm
brew cask install --appdir="/Applications/Programming" sourcetree
brew cask install --appdir="/Applications/Programming" textmate
brew cask install --appdir="/Applications/Programming" visual-studio-code

# install macOS packages in Applications/Security folder
brew cask install --appdir="/Applications/Security" 1password
brew cask install --appdir="/Applications/Security" micro-snitch
brew cask install --appdir="/Applications/Security" tor-browser
brew cask install --appdir="/Applications/Security" viscosity
brew cask install --appdir="/Applications/Security" wifi-explorer

# install macOS packages in Applications/Sports folder
brew cask install --appdir="/Applications/Sports" rubitrack-pro

# install macOS packages in Applications/Utilities folder
brew cask install --appdir="/Applications/Utilities" xquartz