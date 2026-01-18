{ inputs, pkgs, config, ... }:
{
  stylix = {
    enable = true;
    autoEnable = true;
    enableReleaseChecks = false;
    base16Scheme = "${pkgs.base16-schemes}/share/themes/gruvbox-material-dark-medium.yaml";
    override = {
      base00 = config.theme.base00;
      base01 = config.theme.base01;
      base02 = config.theme.base02;
      base03 = config.theme.base03;
      base04 = config.theme.base04;
      base05 = config.theme.base05;
      base06 = config.theme.base06;
      base07 = config.theme.base07;
      base08 = config.theme.base08;
      base09 = config.theme.base09;
      base0A = config.theme.base0A;
      base0B = config.theme.base0B;
      base0C = config.theme.base0C;
      base0D = config.theme.base0D;
      base0E = config.theme.base0E;
      base0F = config.theme.base0F;
    };
    polarity = "dark";
    icons = {
      enable = true;
      package = pkgs.adwaita-icon-theme;
      light = "Adwaita";
      dark = "Adwaita";
    };
    fonts = {
      serif = {
        package = pkgs.google-fonts;
        name = "Alegreya";
      };
      sansSerif = {
        package = pkgs.google-fonts;
        name = "PT Sans Narrow";
      };
      monospace = {
        package = pkgs.nerd-fonts.iosevka;
        name = "Iosevka Nerd Font";
      };
    };
    cursor = {
      package = pkgs.bibata-cursors;
      name = "Bibata-Modern-Ice";
      size = 20;
    };
  };
  home-manager.sharedModules = [(_: {
    stylix.targets = {
      gtk.enable = true;
      qt.enable = true;
      vencord.enable = true;
    };
  })];
}
