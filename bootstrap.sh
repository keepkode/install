#!/usr/bin/env bash

# bootsrapping files for system setup
# systemcheck
clear
echo "Bootstrap installation files\n"

OSTYPE="$(uname -s)"

case $OSTYPE in
  'Darwin')
    OS='MacOS'
    CPUTYPE="$(uname -p)"
    if [[ "$CPUTYPE" == "arm64" ]]
    then
      CPU="Apple"
    else
      CPU="Intel"
    fi
    ;;
  'Linux')
    OS='Linux'
    ;;
  *)
    ;;
esac

echo "Systemcheck\n"
echo "-----------\n"
echo "OS:  $OS"
echo "CPU: $CPU"
/bin/zsh -c "$(curl -fsSL https://raw.githubusercontent.com/keepkode/install/main/setup/mac.sh)"
# set ZDOTDIR to $HOME/.config/zsh
# sed -i '' -e '1s/^/# Setup ZDOTDIR\nZDOTDIR=$HOME\/\.config\/zsh\n/'
