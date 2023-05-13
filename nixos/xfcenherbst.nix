{ config, pkgs, ... }:
# This file is to handle XFCE specific setup for NixOS

{
    # Enable XFCE and herbstluftwm
    services.xserver = {
        enable = true;
        desktopManager = {
            xterm.enable = false;
            xfce = {
                enable = true;
                enableXfwm = false;
              };
          };
          windowManager = {
              herbstluftwm.enable = true;
            };
          displayManager = {
              defaultSession = "xfce+herbstluftwm";
              lightdm.enable = true;
            };
      };
    programs.xfconf.enable = true;


    # herbst specific extra packages
    imports = [
      ./herbstpkgs.nix
    ];

    # XFCE specific compatibility packages
    environment.systemPackages = with pkgs; [
      xfce.xfce4-pulseaudio-plugin
      ];

}
