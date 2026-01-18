{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    (pkgs.writeShellScriptBin "sk" ''
      exec ${pkgs.skim}/bin/sk \
        -e \
      "$@"
    '')
  ];
}
