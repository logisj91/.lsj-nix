{ config, pkgs, ... }:

{
    imports = [
        ./tools/bash.nix  
        ./tools/alacritty.nix
        ./tools/vim.nix
        ./tools/vscode.nix
        ./tools/tmux.nix
    ];

    home.packages = with pkgs; [
        brave
        google-chrome
        ranger
        ncspot
        fzf
        xclip
        bitwarden-cli
        starship
        xorg.xhost
    ];
}