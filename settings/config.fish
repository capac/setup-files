set -x PATH /Applications/Computation/miniconda3/bin /usr/local/sbin /usr/local/bin /usr/bin /bin /usr/sbin /sbin /Library/TeX/texbin /opt/X11/bin /Applications/Postgres.app/Contents/Versions/11/bin /Users/angelo/Scripts

set -x HOMEBREW_NO_EMOJI 1
set -g fish_user_paths "/usr/local/opt/gettext/bin" $fish_user_paths

# TextMate environment setup
set -x EDITOR "/usr/local/bin/mate -w"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval /Applications/Computation/miniconda3/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<

