# Kolibri's development env dotfiles

Arch Linux dotfiles automated with Ansible, probably going to automate windows too later

Tested mostly in WSL2

# Missing:

**Set mirrors**

**SSH Agents and forwarding**

**TMUX**

**Lazygit(?)**

Windows Ansible bootstrap

# Contents:

Fish + Starship

TMUX

Neovim

Keychain

Ansible script for complete bootstrap on Arch

# Install:

didn't test this yet lol but should probably work

```bash
sudo pacman -S git ansible
mkdir -p ~/Dotfiles/dev/
git clone git@github.com:Infravermlho/dotfiles-dev.git ~/Dotfiles/dev/
cd ~/Dotfiles/dev/
ansible-playbook bootstrap.yml
```
