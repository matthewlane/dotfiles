# ------------------------------------------------------------ #
# ~/.bashrc: executed by bash(1) for non-login shells.
# ------------------------------------------------------------ #

# Aliases
# ------------------------------ #
alias ll='ls -ahl'
alias path='echo $PATH | tr : "\n"'
alias reload='source ~/.bashrc'

# Exports
# ------------------------------ #
export PATH=/usr/local/bin:$PATH:$HOME/bin
export CLICOLOR=1

# Virtualenvwrapper
# ------------------------------ #
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/dev
source /usr/local/bin/virtualenvwrapper.sh

# Functions
# ------------------------------ #
function django {
    if [[ "$1" == new* ]]; then
        django-admin startproject "${@:2}";
    else
        python manage.py "$@";
    fi
}
