#!/bin/bash

bash bin/setup_mitamae
bin/mitamae local -y node.yml lib/recipe.rb
bash $HOME/dotfiles/setup.sh
echo "'chsh -s /bin/zsh' or 'exec \$SHELL'"
echo "to get .vim plugins execute 'vi' command"

# exec $SHELL