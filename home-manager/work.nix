{ config, pkgs, ... }:

{
    imports = [
        ./general.nix
    ];

    home.packages = with pkgs; [
        microsoft-edge
    ];
}