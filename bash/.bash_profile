
echo "Running .profile..."

# If running bash, include .bashrc if it exists
if [ -n "$BASH_VERSION" ]; then
    if [ -f ~/.bashrc ]; then
        . ~/.bashrc
    fi
fi

# Set the number of open files to be 1024
ulimit -S -n 1024

# Set environment variables for brew support
eval $(/opt/homebrew/bin/brew shellenv)

# Enables the jEnv export plugin
eval "$(jenv init -)"
jenv enable-plugin export

