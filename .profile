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
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi


# --------------------------------------------
# show git branch so we don't make stupid mistakes AGAIN
parse_git_branch() {
	git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ -\1-/'
}
PS1='\n\[\033[01;34m\]\w\[\033[01;35m\]$(parse_git_branch)\[\033[01;34m\] » \[\033[00m\]'

# --------------------------------------------
# pyenv
export PATH="/home/billy/.pyenv/bin:$PATH"
eval "$(pyenv init - bash --no-rehash)"
eval "$(pyenv virtualenv-init -)"

# --------------------------------------------
# Set DISPLAY for WSL2
export DISPLAY=$(cat /etc/resolv.conf | grep nameserver | awk '{print $2; exit;}'):0.0

