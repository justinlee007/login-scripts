# ~/.bashrc: executed by bash(1) for non-login shells.

echo "Running .bashrc..."

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# don't put duplicate lines in the history. See bash(1) for more options
export HISTCONTROL=ignoredups
# ... and ignore same sucessive entries.
export HISTCONTROL=ignoreboth

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# Use vi for command line editing
set -o vi

# enable programmable completion features 
if [ -f /opt/local/etc/bash_completion ]; then
    . /opt/local/etc/bash_completion

if [ -f ~/bin/git-completion.bash ]; then
  . ~/bin/git-completion.bash
fi

# Function definitions.
if [ -f ~/.func ]; then
    . ~/.func
fi

# Alias definitions.
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# Path definitions.
if [ -f ~/.path ]; then
    . ~/.path
fi

# Prompt definitions.
if [ -f ~/.bash_prompt ]; then
   . ~/.bash_prompt
fi

# nvm completion
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

