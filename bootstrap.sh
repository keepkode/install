#!/usr/bin/env bash

# bootsrapping files for system setup

# systemcheck
clear

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

echo $OSNAME
