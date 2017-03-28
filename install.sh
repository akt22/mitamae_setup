#!/bin/bash

bash bin/setup_mitamae
bin/mitamae local -y node.yml lib/recipe.rb
bash $HOME/dotfiles/setup.sh

exec $SHELL