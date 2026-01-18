{ pkgs, ... }:
{
  services = {
    flatpak.enable = true;
    syncthing.enable = true;
    pipewire = {
      enable = true;
      alsa.enable = true;
      alsa.support32Bit = true;
      pulse.enable = true;
      jack.enable = true;
      wireplumber.enable = true;
      extraConfig.pipewire."10-quantum-limits" = {
        "context.properties" = {
          "default.clock.min-quantum" = 512;
          "default.clock.max-quantum" = 2048;
        };
      };
    };
  };
  security.rtkit.enable = true;
  environment.systemPackages = with pkgs; [
    wiremix
  ];

  services.logind.settings.Login = {
    HandlePowerKey = "ignore";
    HandlePowerKeyLongPress = "ignore";
    HandleLidSwitch = "ignore";
    HandleLidSwitchExternalPower = "ignore";
  };
}

