{ pkgs, ... }:
{
  environment.systemPackages = [
    (pkgs.writeShellScriptBin "bat" ''
      exec ${pkgs.bat}/bin/bat \
        --theme=base16-256 \
      "$@"
    '')
  ];
}

