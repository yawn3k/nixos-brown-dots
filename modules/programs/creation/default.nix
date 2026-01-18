{ pkgs, ... }:
{
  imports = [
    ./fonts.nix
    ./blender.nix
    # ./daw.nix
  ];
  environment.systemPackages = with pkgs; [
    davinci-resolve-studio
    inkscape
    mlv-app
    darktable
    pastel
  ];
}
