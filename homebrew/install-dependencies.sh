#!/bin/sh
#
# Homebrew Dependencies
#
# This installs the homebrew dependencies

$ZSH/homebrew/install.sh 2>&1

# Install/Update homebrew deps
echo "› Installing/Updating dependencies"
brew bundle install --file="$ZSH/homebrew/Brewfile"

exit 0
