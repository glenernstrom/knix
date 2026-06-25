  {config, pkgs, ... }:

  {

    programs.neovim = {
      enable = true;
      defaultEditor = true;
      withPython3 = false;
      withRuby = false;
      plugins = with pkgs.vimPlugins; [
        catppuccin-nvim
        #tokyonight-nvim
        lualine-nvim
        plenary-nvim
        nvim-web-devicons
       # nvim-treesitter
      ];
   };

    xdg.configFile."nvim/init.lua".source = ./init.lua;
    xdg.configFile."nvim/lua".source = ./lua;

  }
