{ config, pkgs, ... }:
# This file is to handle XFCE specific setup for NixOS

{
    services.xserver.windowManager.herbstluftwm.enable = true;
    imports = [
      ./herbstpkgs.nix
    ];
    
}
