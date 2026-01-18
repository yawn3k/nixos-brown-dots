{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    (pkgs.blender.override { cudaSupport = true; })
  ];
  environment.variables."OCIO" = "${pkgs.stdenv.mkDerivation {
    name = "pixelmanager";
    src = pkgs.fetchFromGitHub {
      owner = "Joegenco";
      repo = "PixelManager";
      rev = "22de71f3876e72e33395c1e76c67eac3b469dccc";
      sha256 = "1i5y85w21qjpw7ryrb55qxq904mwsq8iv6272f2bwz6vhkda6kji";
    };
    installPhase = ''
      mkdir -p $out
      cp -r $src/* $out/
      sed -i 's/^\(\s*\)inactive_colorspaces:/\1# inactive_colorspaces:/g' $out/config.ocio
    '';
  }}/config.ocio";
}

