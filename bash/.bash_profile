#!/bin/bash

if [ -f ~/.bash_aliases ]; then
. ~/.bash_aliases
fi


if [ -f ~/.bash_env ]; then
. ~/.bash_env
fi

echo -e '\n. $(brew --prefix asdf)/asdf.sh' >> ~/.zshrc
echo -e '\n. $(brew --prefix asdf)/etc/bash_completion.d/asdf.bash' >> ~/.zshrc
