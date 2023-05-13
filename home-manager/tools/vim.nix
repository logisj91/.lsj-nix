{ config, pkgs, ... }:

{
  # Configuring vim
  programs.vim = {
    enable = true;
    plugins = with pkgs.vimPlugins; [
       awesome-vim-colorschemes
       catppuccin-vim
       fzf-vim
       indentLine
       nerdtree
       syntastic
       tabular
       vim-airline
       vim-easymotion
       vim-fugitive
       vim-markdown
       vim-polyglot
       vim-surround
       vim-tmux-clipboard
       vim-tmux-navigator
       ];
    settings = {
       ignorecase = true; 
       copyindent = true;
       relativenumber = true;
       mouse = "a";
       };
    extraConfig = ''
      set termguicolors
      colorscheme catppuccin_macchiato

      let mapleader=" "
      nmap <leader>fs :w<CR>
      nmap <leader>op :NERDtree<CR>
      nmap <leader>qq :q!<CR>
      nmap <leader>qw :wq!<CR>
    '';
  };
}