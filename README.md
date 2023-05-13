# My dotfiles
This repo is for my own personal and work dotfiles.
Notable omissions;
- This repo does not contain configs that depend on any secrets, I manage those the oldschool way
    - Such as .ssh config, and git configs

# Important install notes
This repo is designed to require you to delete your old configuration (but do keep your `hardware-configuration.nix`), and symlink these folders to their correct locations.
What this means is that you want to do these commands:

```bash
# First copy your own hardware-configuration over so it's not lost
cp /etc/nixos/hardware-configuration.nix ./nixos

# Then, consider making a backup of your existing config
mv /etc/nixos nixos-backup

# Same for your HM config if you have any
mv $HOME/.config/home-manager hm-backup

# Then you want to symlink
ln -s ./nixos /etc/nixos
ln -s ./home-manager $HOME/.config/home-manager

# Finally, you want to run an upgrade
sudo nixos-rebuild switch && home-manager switch
```