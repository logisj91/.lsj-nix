#!/usr/bin/env bash

# Ensuring that nix-channel is set up as it needs to be for home-manager unstable
nix-channel --add https://github.com/nix-community/home-manager/archive/master.tar.gz home-manager
nix-channel --update

# And for the NixOS itself
sudo nix-channel --add https://nixos.org/channels/channel-name nixos
sudo nix-channel --update

# Setting up symlinks
# For home manager
ln -s ./home-manager $HOME/.config/home-manager

# For nixos
sudo cp /etc/nixos/hardware-configuration.nix ./nixos/hardware-configuration.nix
sudo mv /etc/nixos nixos-backup
sudo ln -s ./nixos /etc/nixos

echo "Now you should run the following command:"
echo "sudo nixos-rebuild switch --upgrade && home-manager switch --refresh"

# Starts a nix shell to init home manager
nix-shell -p home-manager