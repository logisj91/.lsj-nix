{ config, pkgs, ... }:

{
    # herbst specific extra packages
    environment.systemPackages = with pkgs; [
      picom
      rofi
      (pkgs.python38.withPackages(ps: with ps; [ pywal ]))
      ];
}
