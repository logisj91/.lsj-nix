{ config, pkgs, ... }:
# This file is to handle XFCE specific setup for NixOS

{
    # Enable the X11 windowing system.
    services.xserver.enable = true;

    # Enable the XFCE Desktop Environment.
    services.xserver.displayManager.sddm.enable = true;
    services.xserver.desktopManager.plasma5.enable = true;

    # XFCE specific extra packages
    # environment.systemPackages = with pkgs; [];
    environment.plasma5.excludePackages = with pkgs.libsForQt5; [
      elisa
      gwenview
      okular
      oxygen
      khelpcenter
      konsole
      plasma-browser-integration
    ];
}
