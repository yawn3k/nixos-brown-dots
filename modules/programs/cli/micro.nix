{ pkgs, ... }:
{
  environment.systemPackages = [
    (pkgs.writeShellScriptBin "micro" ''
      exec ${pkgs.micro}/bin/micro \
        --config-dir /tmp \
      "$@"
    '')
  ];
}

