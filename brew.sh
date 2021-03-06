#!/usr/bin/env bash

echo "Installing brew packages..."
brew cask install basictex
brew cask install miniconda
brew install coreutils
brew install exiftool
brew install ffmpeg
brew install fish
brew install geoip
brew install git
brew install golang
brew install gnupg
brew install heroku/brew/heroku
brew install htop
brew install imagemagick
brew install lame
brew install mkvtoolnix
brew install nmap
brew install pandoc
brew install readline
brew install ruby
brew install tmux
brew install tree
brew install ufraw
brew install watch
brew install wget
brew install youtube-dl
echo

echo "Installing brew cask packages in the Applications folder..."
brew cask install --appdir="/Applications" alfred
brew cask install --appdir="/Applications" backblaze
brew cask install --appdir="/Applications" fantastical
brew cask install --appdir="/Applications" little-snitch
brew cask install --appdir="/Applications" logitech-options
brew cask install --appdir="/Applications" macupdater
brew cask install --appdir="/Applications" nextcloud
brew cask install --appdir="/Applications" ntfs-mac
brew cask install --appdir="/Applications" postgres
brew cask install --appdir="/Applications" psequel
brew cask install --appdir="/Applications" timemachineeditor
brew cask install --appdir="/Applications" the-unarchiver
echo

echo "Installing brew cask packages in the Applications/Computation folder..."
brew cask install --appdir="/Applications/Computation" gfortran
brew cask install --appdir="/Applications/Computation" julia
brew cask install --appdir="/Applications/Computation" r
brew cask install --appdir="/Applications/Computation" rstudio
echo

echo "Installing brew cask packages in the Applications/Intel Power Gadget folder..."
brew cask install --appdir="/Applications/Intel Power Gadget" intel-power-gadget
echo

echo "Installing brew cask packages in the Applications/Internet folder..."
brew cask install --appdir="/Applications/Internet" firefox
brew cask install --appdir="/Applications/Internet" forklift
brew cask install --appdir="/Applications/Internet" qbittorrent
brew cask install --appdir="/Applications/Internet" postbox
brew cask install --appdir="/Applications/Internet" skype
brew cask install --appdir="/Applications/Internet" slack
brew cask install --appdir="/Applications/Internet" spamsieve
brew cask install --appdir="/Applications/Internet" thunderbird
echo

echo "Installing brew cask packages in the Applications/Maintenance folder..."
brew cask install --appdir="/Applications/Maintenance" appdelete
brew cask install --appdir="/Applications/Maintenance" carbon-copy-cloner
brew cask install --appdir="/Applications/Maintenance" coconutbattery
brew cask install --appdir="/Applications/Maintenance" cocktail
brew cask install --appdir="/Applications/Maintenance" daisydisk
brew cask install --appdir="/Applications/Maintenance" drivedx
brew cask install --appdir="/Applications/Maintenance" geekbench
brew cask install --appdir="/Applications/Maintenance" istat-menus
brew cask install --appdir="/Applications/Maintenance" launchpad-manager
brew cask install --appdir="/Applications/Maintenance" onyx
echo

echo "Installing brew cask packages in the Applications/Multimedia..."
brew cask install --appdir="/Applications/Multimedia/Graphics" acorn
brew cask install --appdir="/Applications/Multimedia/Graphics" 
brew cask install --appdir="/Applications/Multimedia/Graphics" imageoptim
brew cask install --appdir="/Applications/Multimedia/Graphics" xee
brew cask install --appdir="/Applications/Multimedia" handbrake
brew cask install --appdir="/Applications/Multimedia" movist-pro
brew cask install --appdir="/Applications/Multimedia" pocket-casts
brew cask install --appdir="/Applications/Multimedia" vlc
brew cask install --appdir="/Applications/Multimedia" xld
echo

echo "Installing brew cask packages in the Applications/Office folder..."
brew cask install --appdir="/Applications/Office" anki
brew cask install --appdir="/Applications/Office" calibre
brew cask install --appdir="/Applications/Office" devonagent
brew cask install --appdir="/Applications/Office" devonthink
brew cask install --appdir="/Applications/Office" omnifocus
brew cask install --appdir="/Applications/Office" skim
brew cask install --appdir="/Applications/Office" vmware-fusion11
echo

echo "Installing brew cask packages in the Applications/Programming folder..."
brew cask install --appdir="/Applications/Programming" atom
brew cask install --appdir="/Applications/Programming" dash
brew cask install --appdir="/Applications/Programming" docker
brew cask install --appdir="/Applications/Programming" iterm2
brew cask install --appdir="/Applications/Programming" macvim
brew cask install --appdir="/Applications/Programming" pluralsight
brew cask install --appdir="/Applications/Programming" postman
brew cask install --appdir="/Applications/Programming" pycharm-ce-with-anaconda-plugin
brew cask install --appdir="/Applications/Programming" sourcetree
brew cask install --appdir="/Applications/Programming" textmate
brew cask install --appdir="/Applications/Programming" visual-studio-code
echo

echo "Installing brew cask packages in the Applications/Security folder..."
brew cask install --appdir="/Applications/Security" 1password
brew cask install --appdir="/Applications/Security" micro-snitch
brew cask install --appdir="/Applications/Security" tor-browser
brew cask install --appdir="/Applications/Security" viscosity
echo

echo "Installing brew cask packages in the Applications/Sports folder..."
brew cask install --appdir="/Applications/Sports" suunto-moveslink2
brew cask install --appdir="/Applications/Sports" rubitrack-pro
echo
echo "Done with brew.sh!"
echo
