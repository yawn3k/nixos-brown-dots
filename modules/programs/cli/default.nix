{ pkgs, ... }:
{
  imports = [
    ./yazi
    ./nvim
    ./fastfetch
    ./btop.nix
    ./skim.nix
    ./bat.nix
    ./micro.nix
    ./git.nix
    ./wine.nix
  ];

  environment.systemPackages = with pkgs; [
    ouch
    unrar
    curl
    inxi
    dua
    croc
    gnupg
    ffmpeg-full
    pandoc
    yt-dlp
  ];
}

