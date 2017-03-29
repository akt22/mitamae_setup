include_recipe 'recipe_helper'

include_role node[:platform]
include_role "base"
include_role "install_pyenv"