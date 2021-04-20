# Path to Oh My Fish install.
set -q XDG_DATA_HOME
  and set -gx OMF_PATH "$XDG_DATA_HOME/omf"
  or set -gx OMF_PATH "$HOME/.local/share/omf"

# Android
set -x ANDROID_HOME $HOME/Android/Sdk
set -gx PATH $ANDROID_HOME/platform-tools $PATH

# Flutter
set -x PATH $PATH $HOME/flutter/bin $PATH

# Elixir
set -gx PATH /usr/lib/elixir/bin $PATH

# Load Oh My Fish configuration.
source $OMF_PATH/init.fish
source ~/.asdf/asdf.fish