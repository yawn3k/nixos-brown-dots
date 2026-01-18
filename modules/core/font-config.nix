{ pkgs, config, ... }: 
{
  fonts = {
    packages = config.theme.font.packages;
    fontconfig = {
      enable = true;
      defaultFonts = {
        monospace = [ "${config.theme.font.mono}" ];
        sansSerif = [ "${config.theme.font.sans}" ];
        serif = [ "${config.theme.font.serif}" ];
      };
    };
  };
}
