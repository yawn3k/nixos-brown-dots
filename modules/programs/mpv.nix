{ pkgs, ... }:
{
  environment.systemPackages = [
    (pkgs.writeShellScriptBin "mpv" ''
      exec ${pkgs.mpv}/bin/mpv \
        --keep-open=yes \
        --volume=50 \
        --input-conf=${pkgs.writeText "mpv-input.conf" ''
          WHEEL_UP add video-zoom 0.05
          WHEEL_DOWN add video-zoom -0.05
        ''} \
      "$@"
    '')
  ];
}
