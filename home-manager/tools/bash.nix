{ config, pkgs, ... }:

{
  # Configuring bash
  programs.bash = {
    enable = true;
    initExtra = ''
     eval "$(starship init bash)";
     '';
    bashrcExtra = '' 
     export PATH="$HOME/.config/emacs/bin:$PATH"
     export PATH="$HOME/.local/share/nvim:$PATH"
    '';
    profileExtra = ''
     xhost +si:localuser:$USER
     '';
    sessionVariables = {
      EDITOR = "vim";
    };
    shellAliases = {
      hm = "home-manager ";
      ".." = "cd .. ";
      ll = "ls -lah ";
    };
  };
}