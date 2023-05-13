{ config, pkgs, ... }:

{
  # Configuring tmux
  programs.tmux = {
    enable = true;
    clock24 = true;
    customPaneNavigationAndResize = true;
    historyLimit = 5000;
    keyMode = "vi";
    mouse = true;
    prefix = "C-a";
    sensibleOnTop = true;
    plugins = with pkgs.tmuxPlugins; [
      cpu
      yank
      resurrect
      weather
      copycat
      tmux-fzf
      continuum
      catppuccin
      mode-indicator
      vim-tmux-navigator
    ];
  };
}