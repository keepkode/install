#!/usr/bin/env zsh

OS=$(uname -s)
CPU=$(uname -p)

# install CommandLineTools

COMMANDLINETOOLS="/Library/Developer/CommandLineTools"
if [ ! -d $COMMANDLINETOOLS ]; then
  echo "installing Commandline Tools"
  xcode-select --install
else
  echo "Commandline Tools installed"
fi

# HOMEBREW
if [[ "$CPU" == "arm64" ]]
then 
  HOMEBREW="/opt/homebrew/bin/brew"
else
  HOMEBREW="/usr/local/bin/brew"
fi

if [ ! -f $HOMEBREW ];then
  echo "installing Homebrew"
else 
  echo "Homebrew installed"
fi

