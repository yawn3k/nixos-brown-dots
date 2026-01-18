{ pkgs, config, ... }:
{
  environment.variables.TERMINAL = "kitty";
  environment.systemPackages = [
    (pkgs.writeShellScriptBin "kitty" ''
      exec ${pkgs.kitty}/bin/kitty \
        --config ${pkgs.writeText "config" ''
          font_family ${config.theme.font.mono}
          font_size 12

          shell_integration no-rc

          background_opacity 1.000000
          cursor_trail 0
          enable_audio_bell no
          hide_window_decorations yes
          tab_bar_style powerline
          window_padding_width 8 0 8 8

          background ${config.theme.base00}
          foreground ${config.theme.base05}
          selection_background ${config.theme.base03}
          selection_foreground ${config.theme.base05}
          cursor ${config.theme.base05}
          cursor_text_color ${config.theme.base00}

          url_color ${config.theme.base04}

          active_border_color ${config.theme.base03}
          inactive_border_color ${config.theme.base01}

          wayland_titlebar_color ${config.theme.base00}
          macos_titlebar_color ${config.theme.base00}

          active_tab_background ${config.theme.base00}
          active_tab_foreground ${config.theme.base05}
          inactive_tab_background ${config.theme.base01}
          inactive_tab_foreground ${config.theme.base04}
          tab_bar_background ${config.theme.base01}

          # The 16 terminal colors
          # normal
          color0 ${config.theme.base00}
          color1 ${config.theme.base08}
          color2 ${config.theme.base0B}
          color3 ${config.theme.base0A}
          color4 ${config.theme.base0D}
          color5 ${config.theme.base0E}
          color6 ${config.theme.base0C}
          color7 ${config.theme.base05}

          # bright
          color8 ${config.theme.base02}
          color9 ${config.theme.base08}
          color10 ${config.theme.base0B}
          color11 ${config.theme.base0A}
          color12 ${config.theme.base0D}
          color13 ${config.theme.base0E}
          color14 ${config.theme.base0C}
          color15 ${config.theme.base07}

          # extended base16 colors
          color16 ${config.theme.base09}
          color17 ${config.theme.base0F}
          color18 ${config.theme.base01}
          color19 ${config.theme.base02}
          color20 ${config.theme.base04}
          color21 ${config.theme.base06}
        ''} \
      "$@"
    '')
  ];
}
