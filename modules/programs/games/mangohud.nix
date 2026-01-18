{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [ mangohud ];
  environment.sessionVariables."MANGOHUD_CONFIGFILE" = pkgs.writeText "mangohud.conf" ''
    font_size=20
    fps_limit=117
    fps_limit_method=late
    full
    no_display
    toggle_hud=Insert
    toggle_fps_limit=
    toggle_logging=

    background_alpha=0
    text_outline_thickness=2

    battery_color=bdae93
    cpu_color=7daea3
    cpu_load_color=a9b665, d8a657, ea6962
    engine_color=d3869b
    fps_color=a9b665, d8a657, ea6962
    frametime_color=a9b665
    gpu_color=a9b665
    gpu_load_color=a9b665, d8a657, ea6962
    io_color=d8a657
    media_player_color=ddc7a1
    text_color=ddc7a1
    text_outline_color=292521
    vram_color=89b482
    wine_color=d3869b
  '';
}
