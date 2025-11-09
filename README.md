# Kolibri's development env dotfiles

Arch Linux dotfiles and bootstrap automated with Ansible, made for use with WSL2

# Missing

**TMUX**

**Lazygit(?)**

Windows Ansible bootstrap

# Contents

Fish + Starship

TMUX

Neovim

Keychain

Ansible script for complete bootstrap on Arch

# Install

didn't test this yet lol but should probably work

```bash
sudo pacman -S git ansible openssh
mkdir -p ~/Dotfiles/dev/
git clone https://github.com/Infravermlho/dotfiles-dev.git ~/Dotfiles/dev/
cd ~/Dotfiles/dev/
ansible-playbook playbook.bootstrap.yml --ask-become-pass
```
