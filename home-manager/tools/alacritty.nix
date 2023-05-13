{ config, pkgs, ... }:

let
  alacrittyfont = "Iosevka Nerd Font";
in

{
  # Configuring alacritty
  programs.alacritty = {
    enable = true;
    settings = {
      #env = {
      #  TERM = "xterm256-color";
      #};
      window = {
        padding = {
          x = 4;
          y = 4;
        };
        dynamic_padding = false;
        opacity = 1.0;
        title = "Alacritty";
        class = {
          instance = "Alacritty";
          general = "Alacritty";
        };
        scrolling.history = 5000;
      };
      font = {
        normal = {
          family = "${alacrittyfont}";
          style = "Regular";
        };
        bold = {
          family = "${alacrittyfont}";
          style = "Bold";
        };
        italic = {
          family = "${alacrittyfont}";
          style = "Italic";
        };
        bold_italic = {
          family = "${alacrittyfont}";
          style = "Bold Italic";
        };
        size = 12.0;
        offset = {
          x = 0;
          y = 1;
        };
      };
      draw_bold_text_with_bright_colors = true;
      colors = {
        primary = {
          background = "#1a1b26";
          foreground = "#a9b1d6";
        };
        normal = {
          black = "#32344a";
          red = "#f7768e";
          green = "#9ece6a";
          yellow = "#e0af68";
          blue = "#7aa2f7";
          magenta = "#ad8ee6";
          cyan = "#449dab";
          white = "#787c99";
        };
        bright = {
          black = "#444b6a";
          red = "#ff7a93";
          green = "#b9f27c";
          yellow = "#ff9e64";
          blue = "#7da6ff";
          magenta = "#bb9af7";
          cyan = "#0db9d7";
          white = "#acb0d0";
        };
      };
    };
  };
}