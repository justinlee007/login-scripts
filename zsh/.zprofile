
echo "Running .zprofile..."

# set the number of open files to be 1024
ulimit -S -n 1024

eval $(/opt/homebrew/bin/brew shellenv)

