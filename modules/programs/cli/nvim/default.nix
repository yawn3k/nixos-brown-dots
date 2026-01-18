{ pkgs, config, ... }:
{
  programs.neovim = {
    enable = true;
    defaultEditor = true;
    configure = {
      customLuaRC = builtins.concatStringsSep "\n" [
        (builtins.readFile ./nvim.lua)
        ''
          require('mini.base16').setup({
            palette = {
              base00 = '${config.theme.base00}', base01 = '${config.theme.base01}',
              base02 = '${config.theme.base02}', base03 = '${config.theme.base03}',
              base04 = '${config.theme.base04}', base05 = '${config.theme.base05}',
              base06 = '${config.theme.base06}', base07 = '${config.theme.base07}',
              base08 = '${config.theme.base08}', base09 = '${config.theme.base09}',
              base0A = '${config.theme.base0A}', base0B = '${config.theme.base0B}',
              base0C = '${config.theme.base0C}', base0D = '${config.theme.base0D}',
              base0E = '${config.theme.base0E}', base0F = '${config.theme.base0F}'
            }
          })
        ''
      ];
      packages.plugins = with pkgs.vimPlugins; {
        start = [
          mini-base16
          nvim-treesitter
          nvim-treesitter.withAllGrammars
          nvim-colorizer-lua
          nvim-cmp
          cmp-path
          cmp-buffer
          render-markdown-nvim
        ];
      };
    };
  };
  environment.shellAliases."e" = "$EDITOR";
}

