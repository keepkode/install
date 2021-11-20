# README

## TODO

- [ ] define folderstructure
- [ ] define initial setup (apps/tools/fonts/...)
- [ ] define setup process

## Automatic system setup


/bin/zsh -c "$(curl -fsSL https://raw.githubusercontent.com/keepkode/install/main/bootstrap.sh)"


# Setupsteps

see https://www.stuartellis.name/articles/mac-setup/#do-this-first

- initial Configuration
	setup useraccount
	setup Wifi / LAN
	update System
- Systemcheck -> run setup based on OS
	- macOS
		- install CommandlineTools -> git
		- install HOMEBREW
		- homebrew install apps / tools / fonts

		- set XDG Directories
		- write defaults

- setup Environment
	- create folderstructure
	- clone dotfiles into $HOME/.local/share/dotfiles
	  https://www.ackama.com/what-we-think/the-best-way-to-store-your-dotfiles-a-bare-git-repository-explained/

- set ZDOTDIR $HOME/.config/zsh
- set hostname

- install Scripts

# Tasks

- writing / taking notes
- coding
- websites
- arduino

The editor is neovim
Tools are when possible terminal apps

## Configuration 

Paths based on the XDG Base directory stucture 

- XDG_CONFIG_HOME
	Where user-specific configurations should be written (analogous to /etc).
	Should default to $HOME/.config.
- XDG_CACHE_HOME
	Where user-specific non-essential (cached) data should be written (analogous to /var/cache).
	Should default to $HOME/.cache.
- XDG_DATA_HOME
	Where user-specific data files should be written (analogous to /usr/share).
	Should default to $HOME/.local/share.
- XDG_STATE_HOME
	Where user-specific state files should be written (analogous to /var/lib).
	Should default to $HOME/.local/state.
- XDG_RUNTIME_DIR
	Used for non-essential, user-specific data files such as sockets, named pipes, etc.
	Not required to have a default value; warnings should be issued if not set or equivalents provided.
	Must be owned by the user with an access mode of 0700.
	Filesystem fully featured by standards of OS.
	Must be on the local filesystem.
	May be subject to periodic cleanup.
	Modified every 6 hours or set sticky bit if persistence is desired.
	Can only exist for the duration of the user's login.
	Should not store large files as it may be mounted as a tmpfs.
	pam_systemd sets this to /run/user/$UID.

# Defaults
how to write defaults
OSX Defaults -> https://github.com/kevinSuttle/macOS-Defaults/blob/master/.macos

zsh
ZDOTDIR = $XDG_CONFIG_HOME/zsh
$HOME/.config/zsh -> /etc/zshrc

## Packages

- Git -> command line developer tools
	Setup ?

- Homebrew

	installiert unter /opt/homebrew

- nvim
	arch -arm64 /opt/homebrew/bin/brew install nvim

- alacritty
	/opt/homebrew/bin/brew install alacritty

- Karabiner elements
	/opt/homebrew/bin/brew install --cask karabiner-elements
	Systeminstellungen -> Sicherheit Datenschutz -> Zugriff erlauben
	complex modifications -> add rule -> change caps_lock to control+option+commnd+shift

## Licensed Apps

alfred
brew install --cask alfred
configure hotkey caps + A
configure app switcher

Preferences stored in /Library/Application\ Support/Alfred/Alfred.alfredpreferences

Install power pack / License
Install Theme


better touch tool

## Optional

mind node
open scad
dash
dropbox
ia writer
istat menu
docker
pnpm
dotfiles git repository


## Directory Structure

HOME
	|- .cache
	|- .config
	|- .local
		|- share
			|- dotfiles






.cache		=> XDG_CACHE_HOME
.config		=> XDG_CONFIG_HOME
.local		=> XDG_DATA_HOME
Desktop		=> Desktop
Documents	=> Documents
Downloads	=> Downloads
Library		=> Library
Movies		=> Movies
Music		=> Music
Pictures	=> Pictures
Public		=> Public
Work		=> Work



## Scripts

bootstrap.sh 	-> systemcheck
		   download setupscript
setup.sh 	-> setup system
		   root of all Work related files, e.g. Projects
