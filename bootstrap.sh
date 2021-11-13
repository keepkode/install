#!/usr/bin/env bash

# bootsrapping files for system setup

# systemcheck
clear

echo "Bootstrap installation files\n"

UNAME="$(uname)"

case $UNAME in
  'Darwin')
    OSNAME='MacOS'
    ;;
  'Linux')
    OSNAME='Linux'
    ;;
  *)
    ;;
esac

echo "Systemcheck\n"
echo "-----------\n"
echo "$OSNAME detected"


