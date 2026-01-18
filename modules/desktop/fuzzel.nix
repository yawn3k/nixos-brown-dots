{ pkgs, config, ... }:
{
  environment.variables.LAUNCHER = "fuzzel";
  environment.systemPackages = [
    (pkgs.writeShellScriptBin "fuzzel" ''
      exec ${pkgs.fuzzel}/bin/fuzzel \
        --config ${pkgs.writeText "fuzzel.ini" ''
          [main]
          font=Iosevka
          icons-enabled=yes
          width=32
          lines=32
          inner-pad=8
          vertical-pad=8
          horizontal-pad=8

          [border]
          width=1
          radius=6

          [colors]
          background=${config.theme.base00}FF
          border=${config.theme.base03}ff
          counter=${config.theme.base06}ff
          input=${config.theme.base05}ff
          match=${config.theme.base0A}ff
          placeholder=${config.theme.base03}ff
          prompt=${config.theme.base03}ff
          selection=${config.theme.base03}ff
          selection-match=${config.theme.base0A}ff
          selection-text=${config.theme.base05}ff
          text=${config.theme.base05}ff
        ''} \
      "$@"
    '')
  ];
}
