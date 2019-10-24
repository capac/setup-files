#!/usr/bin/env bash

if [ "$#" -ne 1 ]; then
    echo "Usage: install.sh <home_directory>"
    exit 1
fi

homedir=$1

# download .gitconfig file
curl "https://raw.githubusercontent.com/capac/setup-files/master/.gitconfig" > ${homedir}/.gitconfig

# download fish config files
mkdir -p ${homedir}/.conda/fish/functions
curl "https://raw.githubusercontent.com/capac/setup-files/master/settings/fish/config.fish" > ${homedir}/.conda/fish/config.fish
curl "https://raw.githubusercontent.com/capac/setup-files/master/settings/fish/fish_variables" > ${homedir}/.conda/fish/fish_variables
curl "https://raw.githubusercontent.com/capac/setup-files/master/settings/fish/functions/cdf.fish" > ${homedir}/.conda/fish/functions/cdf.fish
curl "https://raw.githubusercontent.com/capac/setup-files/master/settings/fish/functions/fish_prompt.fish" > ${homedir}/.conda/fish/functions/fish_prompt.fish
curl "https://raw.githubusercontent.com/capac/setup-files/master/settings/fish/functions/l.fish" > ${homedir}/.conda/fish/functions/l.fish
curl "https://raw.githubusercontent.com/capac/setup-files/master/settings/fish/functions/la.fish" > ${homedir}/.conda/fish/functions/la.fish
curl "https://raw.githubusercontent.com/capac/setup-files/master/settings/fish/functions/ls.fish" > ${homedir}/.conda/fish/functions/ls.fish
curl "https://raw.githubusercontent.com/capac/setup-files/master/settings/fish/functions/pdf.fish" > ${homedir}/.conda/fish/functions/pdf.fish