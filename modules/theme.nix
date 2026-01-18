{ lib, pkgs, ... }:
{
  options.theme = {
    font = {
      packages = lib.mkOption {
        type = lib.types.listOf lib.types.package;
        default = with pkgs; [
          nerd-fonts.iosevka
          google-fonts
        ];
      };
      mono = lib.mkOption {
        type = lib.types.str;
        default = "Iosevka Nerd Font";
      };
      sans = lib.mkOption {
        type = lib.types.str;
        default = "PT Sans Narrow";
      };
      serif = lib.mkOption {
        type = lib.types.str;
        default = "Alegreya";
      };
    };

    cursor = {
      packages = lib.mkOption {
        type = lib.types.listOf lib.types.package;
        default = with pkgs; [
          bibata-cursors
        ];
      };
      name = lib.mkOption {
        type = lib.types.str;
        default = "Bibata-Modern-Ice";
      };
      size = lib.mkOption {
        type = lib.types.int;
        default = 20;
      };
    };


    base00 = lib.mkOption {
      type = lib.types.str;
      default = "#29231d"; # Black
    };
    base01 = lib.mkOption {
      type = lib.types.str;
      default = "#332b24"; # Bright black
    };
    base02 = lib.mkOption {
      type = lib.types.str;
      default = "#4f4337"; # Grey
    };
    base03 = lib.mkOption {
      type = lib.types.str;
      default = "#665747"; # Brigher grey
    };
    base04 = lib.mkOption {
      type = lib.types.str;
      default = "#bdae93"; # Bright grey
    };
    base05 = lib.mkOption {
      type = lib.types.str;
      default = "#ddc7a1"; # White
    };
    base06 = lib.mkOption {
      type = lib.types.str;
      default = "#ebdbb2"; # Brighter white
    };
    base07 = lib.mkOption {
      type = lib.types.str;
      default = "#fbf1c7"; # Bright white
    };
    base08 = lib.mkOption {
      type = lib.types.str;
      default = "#ea6962"; # Red
    };
    base09 = lib.mkOption {
      type = lib.types.str;
      default = "#e78a4e"; # Orange
    };
    base0A = lib.mkOption {
      type = lib.types.str;
      default = "#d8a657"; # Yellow
    };
    base0B = lib.mkOption {
      type = lib.types.str;
      default = "#a9b665"; # Green
    };
    base0C = lib.mkOption {
      type = lib.types.str;
      default = "#89b482"; # Cyan
    };
    base0D = lib.mkOption {
      type = lib.types.str;
      default = "#7daea3"; # Blue
    };
    base0E = lib.mkOption {
      type = lib.types.str;
      default = "#d3869b"; # Purple
    };
    base0F = lib.mkOption {
      type = lib.types.str;
      default = "#bd6f3e"; # Magenta
    };
  };
}
