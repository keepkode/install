#!/usr/bin/env bash

# bootsrapping files for system setup
# systemcheck
clear
echo "Param: $1"
echo "Bootstrap installation files\n"

OSTYPE="$(uname -s)"

case $OSTYPE in
  'Darwin')
    OS='mac'
    CPUTYPE="$(uname -p)"
    if [[ "$CPUTYPE" == "arm64" ]]
    then
      CPU="Apple"
    else
      CPU="Intel"
    fi
    ;;
  'Linux')
    OS='linux'
    ;;
  *)
    ;;
esac

echo "Systemcheck\n"
echo "-----------\n"
echo "OS:  $OS"
echo "CPU: $CPU"
/bin/zsh -c "$(curl -fsSL https://raw.githubusercontent.com/keepkode/install/main/setup/$OS.sh)" mac
# set ZDOTDIR to $HOME/.config/zsh
# sed -i '' -e '1s/^/# Setup ZDOTDIR\nZDOTDIR=$HOME\/\.config\/zsh\n/'
