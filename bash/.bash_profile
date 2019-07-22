#!/bin/bash

if [ -f ~/.bash_aliases ]; then
. ~/.bash_aliases
fi


if [ -f ~/.bash_env ]; then
. ~/.bash_env
fi

. $HOME/.asdf/completions/asdf.bash
