# pyenv の設定を.bashrcに書く
PYENV_ROOT = File.join(ENV["HOME"], '.pyenv')
git "clone pyenv" do
  destination "#{PYENV_ROOT}"
  repository "https://github.com/pyenv/pyenv.git"
end

# pyenv_init = <<-EOS
#   export PYENV_ROOT=#{PYENV_ROOT}
#   export PATH="#{PYENV_ROOT}/bin:${PATH}"
#   eval "$(pyenv init --no-rehash -)"
# EOS

# execute "install python" do
#   command "#{pyenv_init} pyenv install #{node[:pyenv][:version]}"
#   not_if "#{pyenv_init} pyenv version | grep #{node[:pyenv][:version]}"
# end

# execute "set global python 3.5.2" do
#   command "#{pyenv_init} pyenv global #{node[:pyenv][:version]}; pyenv rehash"
# end

# execute "pip install ansible" do
#   command "#{pyenv_init} pip install ansible"
#   not_if "#{pyenv_init} pip freeze | grep ansible"
# end
