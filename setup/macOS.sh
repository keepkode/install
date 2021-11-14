#!/usr/bin/env zsh

if [[ $ZSH_VERSION -ge 5.3 ]]; then
  echo "zsh version ok"
else
  echo "ZSH Version too old\nquit"
  exit 1 
fi


OS=$(uname -s)
CPU=$(uname -p)

# Setup variables
# HOMEBREW
if [[ "$CPU" == "arm64" ]]
then 
  HOMEBREW="/opt/homebrew/bin/brew"
else
  HOMEBREW="/usr/local/bin/brew"
fi

# Commandlinetools
COMMANDLINETOOLS="/Library/Developer/CommandLineTools"
ZSHCONFIGDIR="$HOME/.config/zsh"

installstack=()

echo "----------"
echo "Checking prequisites"
echo "----------\n"

# prequisites
# add additional prequisites as "<name>" "<type>"
declare -A prequisites
prequisites=(
  "HOMEBREW" "file"
  "ZDOTDIR" "variable"
  "COMMANDLINETOOLS" "directory"
  "XZSH_VERSION" "variable"

)

for key value in ${(kv)prequisites}; do
  case $value in
    'variable')
      TEST='-v'
      ;;
    'file')
      TEST="-f"
        ;;
    'directory')
      TEST="-d"
      ;;
    'xxx')
      TEST="-d"
      ;;
    *)
      ;;
  esac
  if [ ! "$TEST" $key ]; then
      installstack+=("setup_$key")
  fi
done

for i in $installstack
do
  echo "$i"
done

