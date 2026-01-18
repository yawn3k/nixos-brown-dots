{ pkgs, ... }:
{
  environment.systemPackages = [
    (pkgs.writeShellScriptBin "ff" ''
      exec ${pkgs.fastfetch}/bin/fastfetch \
        --config ${pkgs.writeText "config.jsonc" (builtins.readFile ./config.jsonc)} \
      "$@"
    '')
  ];
}
