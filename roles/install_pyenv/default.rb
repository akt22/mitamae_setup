# pyenv の設定を.bashrcに書く
git "clone pyenv" do
  destination File.join(ENV["HOME"], '.pyenv')
  repository "https://github.com/pyenv/pyenv.git"
end

PYENV_SCRIPT = File.join(ENV["HOME"], ".pyenvrc")

file "#{PYENV_SCRIPT}" do
  content 'export PYENV_ROOT=$HOME/.pyenv
export PATH=$PYENV_ROOT/bin:$PATH
eval "$(pyenv init -)"
'
end

execute "install python" do
  command "source #{PYENV_SCRIPT}; pyenv install 3.5.2"
end

execute "set global python 3.5.2" do
  command "source #{PYENV_SCRIPT}; pyenv global 3.5.2; pyenv rehash"
end

execute "pip install ansible" do
  command "source #{PYENV_SCRIPT}; pip install ansible"
end
