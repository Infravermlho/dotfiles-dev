# Kolibri's development env dotfiles

Arch Linux dotfiles and bootstrap automated using Ansible.

# Contents

Fish + Starship

TMUX
CTRL-B + I

Neovim

Keychain

Ansible script for bootstrap on Arch

# Install

```bash
sudo pacman -S git ansible openssh
mkdir -p ~/Dotfiles/dev/
git clone https://github.com/Infravermlho/dotfiles-dev.git ~/Dotfiles/dev/
cd ~/Dotfiles/dev/
ansible-playbook playbook.bootstrap.yml --ask-become-pass
# Then go into tmux and do Ctrl-B + I to install the plugins
```
