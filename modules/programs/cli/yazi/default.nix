{ pkgs, ... }:
{
  programs.yazi = {
    enable = true;
    settings = {
      keymap = import ./keymap.nix;
      yazi = import ./settings.nix;
    };
    initLua = ./init.lua;
  };
}
