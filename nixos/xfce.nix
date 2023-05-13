{ config, pkgs, ... }:
# This file is to handle XFCE specific setup for NixOS

{
    # Enable the X11 windowing system.
    services.xserver.enable = true;

    # Enable the XFCE Desktop Environment.
    services.xserver.displayManager.lightdm.enable = true;
    services.xserver.desktopManager.xfce.enable = true;
    programs.xfconf.enable = true;

    # XFCE specific extra packages
    environment.systemPackages = with pkgs; [
      xfce.xfce4-pulseaudio-plugin
    ];
}
