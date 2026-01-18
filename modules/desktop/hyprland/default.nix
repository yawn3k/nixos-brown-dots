{ pkgs, lib, config, ... }:
let
  color = builtins.substring 1 (builtins.stringLength config.theme.base0D - 1);
in
{
  programs.hyprland = {
    enable = true;
  };

  environment.systemPackages = with pkgs; [
    wl-clipboard
  ];

  systemd.services."getty@tty1" = { enable = false; };
  systemd.services."getty@tty2" = { enable = false; };
  systemd.services."getty@tty3" = { enable = false; };
  systemd.services."getty@tty4" = { enable = false; };
  systemd.services."getty@tty5" = { enable = false; };
  systemd.services."getty@tty6" = { enable = false; };

  services.greetd = {
    enable = true;
    settings = {
      default_session = {
        command = "start-hyprland";
        user = "yawn3k";
        vt = 1;
      };
    };
  };
  
  environment.variables."HYPRLAND_CONFIG" = "/etc/hyprland.conf" ;
  environment.etc."hyprland.conf".text = lib.concatStringsSep "\n" [
    (builtins.readFile ./monitors.conf)
    (builtins.readFile ./behavior.conf)
    (builtins.readFile ./visual.conf)
    (builtins.readFile ./binds.conf)
    (builtins.readFile ./window-rules.conf)
    ''
      decoration {
        shadow {
          color=rgba(29252199)
        }
      }
      general {
        col.active_border = rgb(${color config.theme.base03})
        col.inactive_border = rgb(${color config.theme.base03})
      }
      group {
        groupbar {
          col.active = rgb(${color config.theme.base04})
          col.inactive = rgb(${color config.theme.base03})
          text_color = rgb(${color config.theme.base05})
        }
        col.border_active = rgb(${color config.theme.base03})
        col.border_inactive = rgb(${color config.theme.base03})
        col.border_locked_active = rgb(${color config.theme.base0C})
      }
      misc {
        background_color = rgb(${color config.theme.base01})
      }
    ''
  ];
}
