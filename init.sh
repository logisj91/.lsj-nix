#!/usr/bin/env bash

# Setting up symlinks
# For home manager
ln -s ./home-manager $HOME/.config/home-manager

# For nixos
cp /etc/nixos/hardware-configuration.nix ./nixos/hardware-configuration.nix
rm -rf /etc/nixos
ln -s ./nixos /etc/nixos

echo "Now you should run sudo nixos-rebuild switch, and then home-manager switch"

# Starts a nix shell to init home manager
nix-shell -p home-manager