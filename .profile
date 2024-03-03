# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
	# include .bashrc if it exists
	if [ -f "$HOME/.bashrc" ]; then
		. "$HOME/.bashrc"
	fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ]; then
	PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ]; then
	PATH="$HOME/.local/bin:$PATH"
fi

#setxkbmap -option caps:escape
#setxkbmap -option shift:both_capslock_cancel

#setxkbmap -model pc105
#setxkbmap -layout us,ara -variant ,digits
timedatectl set-local-rtc 1

PATH="$PATH:$HOME/go/bin"

export BROWSER=/usr/bin/firefox
# export TERM=rxvt-unicode-256color
# export TERMINAL=urxvt
#export TERM=xfce4-terminal
export TERMINAL=/usr/bin/konsole
export EDITOR=nvim
