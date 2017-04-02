## Install Dependences for Setup

Linux cannot use without sudo permission.

1. `curl https://gist.githubusercontent.com/akt22/c72a2bfa39e3eb61c547a97cc63d4dd8/raw/74e41086ee6cd574f37b5d1a959c22b97d024e0b/get_mitamae_dir.sh | sh`
1. `cd mitamae_setup`
1. `sh install.sh`
1. `chsh -s /bin/zsh or restart shell`
1. `git clone git@github.com:akt22/install_apps.git`
1. `ansible-playbook site.yml`