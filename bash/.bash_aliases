# enable color support of ls and also add handy aliases
if [ "$TERM" != "dumb" ]; then
    alias ls='ls -G'
    alias dir='ls -CG'
    alias vdir='ls -Gl'
fi

# some more ls aliases
alias ll='ls -l'
alias la='ls -al'
alias l='ls -CF'

# Git aliases
alias g='git'
alias gd='git diff'
alias gdc='git diff --cached'  # show changes in index
alias gs='git status'

alias gl="git log"
alias glp='git log -p -M -C -c'  # log with code changes (-c for merge patches)

alias gp='git pull'
alias gpr='git pull --rebase'
alias gpp='git push'
alias gpud='gp upstream develop'
alias gppod='gpp origin develop'

alias gc='git commit -v'
alias gcm='gc -m '    # commit with message
alias gca='gc -a'     # commit all 
alias gcam='gc -am '  # commit all with message

alias go="git checkout"          # switch branch
alias gob="git checkout -b"      # new branch
alias gom="git checkout master"
alias gov="git checkout develop"

alias grh='git reset HEAD'          # reset index
alias grhh='git reset HEAD --hard'  # reset index and working tree

alias gb='git branch -v'  # list branches
alias gbv='git branch -vv' # list branches with remotes
alias gbd='git branch -d' # remove branch
alias gbr='git branch -d' # remove branch (same)

alias ga="git add"
alias gr="git rm"

alias gm="git merge"
alias gz='git rebase'

alias gst='git stash'

# git log graph -- like gitk text mode
alias glg="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(blue)<%an>%Creset' --abbrev-commit --all"
alias gln="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(blue)<%an>%Creset' --abbrev-commit"

if [ -f ~/bin/git-completion.bash ]; then
  # Add git completion to aliases
  __git_complete gp _git_pull
  __git_complete gpp _git_push
  __git_complete go _git_checkout
  # __git_complete gob checkout -b
  __git_complete gm _git_merge
  __git_complete gz _git_rebase
fi

alias python=/usr/bin/python3

# Python JSON formatter aliases
alias pj='python -mjson.tool'
