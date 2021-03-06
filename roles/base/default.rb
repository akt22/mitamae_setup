node[:packages][node[:platform]].each do |p|
  package p
end

node[:packages]["base"].each do |p|
  package p
end

git "clone dotfiles" do
  destination File.join(ENV["HOME"], 'dotfiles')
  repository "https://github.com/akt22/dotfiles.git"
end

execute "run setup.sh" do
  command "bash $HOME/dotfiles/setup.sh"
end