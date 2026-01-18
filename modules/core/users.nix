{ inputs, config, pkgs, ... }:
{
  users.users."yawn3k" = {
    isNormalUser = true;
    extraGroups = [
      "wheel"
      "adbusers"
    ];
  };
  home-manager = {
    useGlobalPkgs = true;
    useUserPackages = true;
    backupFileExtension = "bak";
    users."yawn3k" = {
      home.stateVersion = "24.11";
      home.username = "yawn3k";
      home.homeDirectory = "/home/yawn3k";

      xdg = {
        enable = true;
        userDirs.enable = false;
      };
    };
  };
}
