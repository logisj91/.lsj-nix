{ config, pkgs, ... }:

{
  # Configuring vscode
  programs.vscode = {
    enable = true;
    extensions = with pkgs.vscode-extensions; [
      vscodevim.vim
      catppuccin.catppuccin-vsc
    ];
    userSettings = {
      "editor.fontFamily" = "'Iosevka Nerd Font Mono', 'Droid Sans Mono', 'monospace', 'monospace'";
      "editor.fontSize" = 16;
      "editor.fontWeight" = "Regular";
      "editor.fontLigatures" = true;
      "git.confirmSync" = false;
      "explorer.confirmDragAndDrop" = false;
      "workbench.colorTheme" = "Catppuccin Macchiato";
      "workbench.iconTheme" = "catppuccin-macchiato";
      "vim.leader" = "<space>";
      "vim.normalModeKeyBindingsNonRecursive" = [
        {
          "before" = ["<leader>" "f" "s" ];
          "after" = [];
          "commands" = [
            {
              "command" = "workbench.action.files.save";
            }
          ];
        }
        {
          "before" = ["<leader>" "<space>" ];
          "after" = [];
          "commands" = [
            {
              "command" = "workbench.action.showCommands";
              "args" = [];
            }
          ];
        }
        {
          "before" = ["<leader>" "o" "t" ];
          "after" = [];
          "commands" = [
            {
              "command" = "workbench.action.terminal.toggleTerminal";
              "args" = [];
            }
          ];
        }
        {
          "before" = ["<leader>" "o" "p" ];
          "after" = [];
          "commands" = [
            {
              "command" = "workbench.view.explorer";
              "args" = [];
            }
          ];
        }
      ];
    };
  };
}