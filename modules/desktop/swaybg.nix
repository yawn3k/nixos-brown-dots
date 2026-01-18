{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [ swaybg ];
  environment.variables.WALLPAPER = "swaybg -i /etc/wallpaper.png";
  environment.etc."wallpaper.png".source = builtins.fetchurl {
    url = "https://w.wallhaven.cc/full/yq/wallhaven-yqqwvd.jpg";
  };
}
