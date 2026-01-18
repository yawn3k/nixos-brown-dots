{ pkgs, ... }:
{
  environment.systemPackages = [
    (pkgs.writeShellScriptBin "waybar" ''
      exec ${pkgs.waybar}/bin/waybar \
        --config ${pkgs.writeText "config.jsonc" (builtins.readFile ./config.jsonc)} \
        --style ${pkgs.writeText "style.css" (builtins.readFile ./style.css)} \
      "$@"
    '')
  ];
  environment.variables.BAR = "waybar";
}
