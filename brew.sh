#!/usr/bin/env bash

echo "Installing Homebrew packages..."
brew install --cask basictex font-hack-nerd-font
brew install awscli exiftool eza ffmpeg fish gh git-lfs \
             go htop hugo julia nmap pandoc php pyenv rclone \
             tcl-tk@8 tmux wget yt-dlp zlib 
echo

declare -A CASK_GROUPS=(
  ["/Applications"]="alfred backblaze fantastical little-snitch logitech-options macupdater ntfs-mac postgres"
  ["/Applications/Computation"]="r rstudio"
  ["/Applications/Internet"]="firefox forklift qbittorrent slack thunderbird"
  ["/Applications/Maintenance"]="carbon-copy-cloner coconutbattery cocktail daisydisk drivedx geekbench istat-menus launchpad-manager onyx"
  ["/Applications/Multimedia/Graphics"]="acorn imageoptim"
  ["/Applications/Multimedia"]="handbrake movist-pro pocket-casts vlc xld"
  ["/Applications/Office"]="calibre devonagent devonthink omnifocus skim vmware-fusion13"
  ["/Applications/Programming"]="dash docker iterm2 sourcetree sublimetext textmate visual-studio-code"
  ["/Applications/Security"]="1password micro-snitch"
)

for dir in "${!CASK_GROUPS[@]}"; do
  echo "Installing cask apps in $dir..."
  brew install --cask --appdir="$dir" ${CASK_GROUPS[$dir]}
  echo
done

echo "Done with brew.sh!"
