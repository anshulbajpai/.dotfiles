#!/bin/bash

if [ -f ~/.bash_aliases ]; then
. ~/.bash_aliases
fi

if [ -f ~/.bash_functions ]; then
. ~/.bash_functions
fi

if [ -f ~/.bash_untracked ]; then
. ~/.bash_untracked
fi

if [ -f ~/.bash_env ]; then
. ~/.bash_env
fi

export PATH="$HOME/.poetry/bin:$PATH"
