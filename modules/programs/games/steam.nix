{ pkgs, ... }:
{
  programs.steam = {
    enable = true;
    extraCompatPackages = with pkgs; [ proton-ge-bin ];
    package = (pkgs.steam.override {
      extraEnv = {
        MANGOHUD = true;
        PROTON_USE_NTSYNC = true;
        PROTON_ENABLE_WAYLAND = false;
        PROTON_NO_NTSYNC = false;
        PROTON_NO_FSYNC = true;
        PROTON_NO_ESYNC = true;
      };
    });
    remotePlay.openFirewall = true;
    dedicatedServer.openFirewall = true;
    localNetworkGameTransfers.openFirewall = false;
    protontricks.enable = true;
  };
  hardware.steam-hardware.enable = true;
}
