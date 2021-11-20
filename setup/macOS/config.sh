#!/usr/bin/env zsh

# set ZDOTDIR 
sudo sed -i '' -e '1s/^/# Setup ZDOTDIR\nZDOTDIR=$HOME\/\.config\/zsh\n/' ~/tmp/install/tmp.txt 
source /etc/zshrc
