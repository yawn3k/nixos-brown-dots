{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [ hyprshot ];
  environment.variables.SCREENSHOT = "hyprshot -m region --clipboard-only";
}
