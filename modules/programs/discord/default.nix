{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    (discord.override { withVencord = true; })
    vesktop
  ];
  home-manager.sharedModules = [(_: {
  })];
}
