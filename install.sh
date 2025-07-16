#!/usr/bin/env bash

if [ "$#" -ne 1 ]; then
    echo "Usage: install.sh <home_directory>"
    echo "'sudo' is required for writing permission,"
    echo "enter admin password when prompted."
    exit 1
fi

homedir=$HOME

echo "Installing the Xcode CLI tools..."
sudo xcode-select --install
echo

echo "Installing Homebrew..."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
echo

echo "Creating the Applications subfolders..."
mkdir -p -m 755 Applications/{Computation, Internet, Maintenance, Multimedia/{Graphics}, Office, Programming, Security}
echo

# echo "Downloading the latest Miniconda distribution for macOS..."
# curl "https://repo.anaconda.com/miniconda/Miniconda3-latest-MacOSX-x86_64.sh" > ${homedir}
# echo
# echo "Installing the latest Miniconda distribution for macOS..."
# bash Miniconda3-latest-MacOSX-x86_64.sh -b -f -t -p /Applications/Computation/miniconda3
# curl "https://raw.githubusercontent.com/capac/setup-files/master/settings/conda/installed-conda-packages.txt" > ${homedir}/installed-conda-packages.txt
# sudo conda list --explicit > installed-conda-packages.txt
# rm installed-conda-packages.txt
# echo

echo "Running the Homebrew script..."
./brew.sh

echo "Downloading the .gitconfig file..."
curl "https://raw.githubusercontent.com/capac/setup-files/master/.gitconfig" > ${homedir}/.gitconfig
echo

echo "Downloading the fish shell config files..."
mkdir -p -m 755 ${homedir}/.conda/fish/functions
curl "https://raw.githubusercontent.com/capac/setup-files/master/settings/fish/config.fish" > ${homedir}/.conda/fish/config.fish
curl "https://raw.githubusercontent.com/capac/setup-files/master/settings/fish/fish_variables" > ${homedir}/.conda/fish/fish_variables
curl "https://raw.githubusercontent.com/capac/setup-files/master/settings/fish/functions/cdf.fish" > ${homedir}/.conda/fish/functions/cdf.fish
curl "https://raw.githubusercontent.com/capac/setup-files/master/settings/fish/functions/fish_prompt.fish" > ${homedir}/.conda/fish/functions/fish_prompt.fish
curl "https://raw.githubusercontent.com/capac/setup-files/master/settings/fish/functions/l.fish" > ${homedir}/.conda/fish/functions/l.fish
curl "https://raw.githubusercontent.com/capac/setup-files/master/settings/fish/functions/la.fish" > ${homedir}/.conda/fish/functions/la.fish
curl "https://raw.githubusercontent.com/capac/setup-files/master/settings/fish/functions/ls.fish" > ${homedir}/.conda/fish/functions/ls.fish
curl "https://raw.githubusercontent.com/capac/setup-files/master/settings/fish/functions/pdf.fish" > ${homedir}/.conda/fish/functions/pdf.fish
echo

echo "Downloading the IPython config files..."
mkdir -p -m 755 ${homedir}/.ipython/profile_default/
curl "https://raw.githubusercontent.com/capac/setup-files/master/settings/ipython/ipython_config.py" > ${homedir}/.ipython/profile_default/ipython_config.py
curl "https://raw.githubusercontent.com/capac/setup-files/master/settings/ipython/ipython_kernel_config.py" > ${homedir}/.ipython/profile_default/ipython_kernel_config.py
echo

echo "Dowmloading the iTerm2 preference and color-template files..."
mkdir -p -m 700 ${homedir}/Library/Preferences
curl "https://raw.githubusercontent.com/capac/setup-files/master/settings/iterm2/com.googlecode.iterm2.plist" > ${homedir}/Library/Preferences/com.googlecode.iterm2.plist
curl "https://raw.githubusercontent.com/capac/setup-files/master/settings/iterm2/MyMonokaiPro-FilterMachine.itermcolors" > ${homedir}/MyMonokaiPro-FilterMachine.itermcolors
echo

echo "Downloading the VSCode config files..."
mkdir -p -m 755 ${homedir}/Library/Application\ Support/Code/User/
curl "https://raw.githubusercontent.com/capac/setup-files/master/settings/visual-studio-code/settings.json" > ${homedir}/Library/Application\ Support/Code/User/settings.json
echo
echo "Done!"
