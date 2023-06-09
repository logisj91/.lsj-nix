{ config, pkgs, ... }:

let
  work = false;
in

{
  imports = if work == true then [./work.nix] else [./personal.nix];

  # Home Manager needs a bit of information about you and the paths it should
  # manage.
  home.username = "lsj";
  home.homeDirectory = "/home/lsj";

  # Should allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # The home.packages option allows you to install Nix packages into your
  # environment.
  home.packages = with pkgs; [
    # # You can also create simple shell scripts directly inside your
    # # configuration. For example, this adds a command 'my-hello' to your
    # # environment:
    # (pkgs.writeShellScriptBin "my-hello" ''
    #   echo "Hello, ${config.home.username}!"
    # '')
    (nerdfonts.override { fonts = [ "Iosevka" ]; })
  ];

  # Home Manager is pretty good at managing dotfiles. The primary way to manage
  # plain files is through 'home.file'.
  home.file = {
    # # Building this configuration will create a copy of 'dotfiles/screenrc' in
    # # the Nix store. Activating the configuration will then make '~/.screenrc' a
    # # symlink to the Nix store copy.
    # ".screenrc".source = dotfiles/screenrc;

    # # You can also set the file content immediately.
    # ".gradle/gradle.properties".text = ''
    #   org.gradle.console=verbose
    #   org.gradle.daemon.idletimeout=3600000
    # '';

    # Herbstluftwm dotfile
    ".config/herbstluftwm".source = ./dotfiles/herbstluftwm;

    # Picom config
    ".config/picom".source = ./dotfiles/picom;

    # Doom emacs config
    ".config/doom".source = ./dotfiles/doom-emacs;

    # Qutebrowser config
    ".config/qutebrowser".source = ./dotfiles/qutebrowser;
  };

  # This value determines the Home Manager release that your configuration is
  # compatible with. This helps avoid breakage when a new Home Manager release
  # introduces backwards incompatible changes.
  #
  # You should not change this value, even if you update Home Manager. If you do
  # want to update the value, then make sure to first check the Home Manager
  # release notes.
  home.stateVersion = "22.11"; # Please read the comment before changing.

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
