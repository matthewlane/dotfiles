# ------------------------------------------------------------ #
# ~/.bashrc: executed by bash(1) for non-login shells.
# ------------------------------------------------------------ #

# Aliases
alias ll='ls -ahl'
alias path='echo $PATH | tr : "\n"'
alias reload='source ~/.bashrc'

# Exports
export PATH=/usr/local/bin:node_modules/.bin:$PATH:$HOME/bin
export CLICOLOR=1

# Git
source /usr/local/etc/bash_completion.d/git-completion.bash

# Virtualenvwrapper
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/dev
source /usr/local/bin/virtualenvwrapper.sh

# Powerline
source /usr/local/lib/python2.7/site-packages/powerline/bindings/bash/powerline.sh
