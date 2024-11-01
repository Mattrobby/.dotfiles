# My dotfiles

This directory contains the dotfiles for my system

## Requirements

Ensure you have the following installed on your system

### Arch

```
sudo pacman -S git stow
```

### Red Hat / Fedora

```
sudo dnf install git stow
```

### Debian / Ubuntu 

```
sudo apt install git stow
```

## Installation

First, check out the dotfiles repo in your $HOME directory using git

```
git clone --recurse-submodules https://github.com/Mattrobby/.dotfiles.git
cd .dotfiles
```

then use GNU stow to create symlinks

```
stow .
```

## Enable `ssh-agent`

Once you have installed the `.dotfiles` directory, you can enable `ssh-agent` with Systemd

```
systemctl --user enable --now ssh-agent
```

