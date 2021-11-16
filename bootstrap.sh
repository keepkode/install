#!/usr/bin/env zsh

clear

echo "Systemcheck"
echo "-----------"

OSTYPE="$(uname -s)"

case $OSTYPE in
  'Darwin')
    OS='macOS'
    ;;
  'Linux')
    OS='linux'
    ;;
  *)
    ;;
esac

echo "OS:\t${OS}"

ZSHMSG="ZSH:\t"
if [[ !  $ZSH_VERSION -ge 5.3 ]]; then
  ${ZSHMSG}+=
  echo "${ZSHMSG}not ok, Version => 5.3 required\n\tQuit!"
  exit 1 
else
  echo "${ZSHMSG}ok"
fi

PYMSG="Python:\t"
if [ !  /usr/bin/python ]; then
  echo "${PYMSG}not found.\n\tQuit!"
  exit 1
else 
  echo "${PYMSG}ok"
fi

echo "\nStarting Setup"
echo "--------------\n"
echo "- downloading macOS Setupfiles"

