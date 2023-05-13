{ config, pkgs, ... }:
# This file is to handle XFCE specific setup for NixOS

{
    # Enable the X11 windowing system.
    services.xserver.enable = true;

    # Enable the XFCE Desktop Environment.
    services.xserver.displayManager = {
        defaultSession = "none+herbstluftwm";
        lightdm.enable = true;
      };
    services.xserver.windowManager.herbstluftwm.enable = true;
    services.xserver.desktopManager.xterm.enable = true;
    
    # herbst specific extra packages
    imports = [
      ./herbstpkgs.nix
    ];
}
