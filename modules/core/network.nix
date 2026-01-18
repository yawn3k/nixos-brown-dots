{ pkgs, ... }:
{
  networking = {
    hostName = "nixos";
    networkmanager.enable = false;
    wireless.iwd.enable = true;
    useNetworkd = true;
    nameservers = [
      "9.9.9.9"
      "149.112.112.112"
      "2620:fe::fe"
      "2620:fe::9"
    ];
  };
  systemd.network = {
    enable = true;
    networks = {
      wireless = {
        matchConfig.Name = "wlan*";
        networkConfig = { DHCP = "yes"; };
        dhcpV4Config = { UseDNS = false; };
        dhcpV6Config = { UseDNS = false; };
      };
      wired = {
        matchConfig.Name = "en* eth*";
        networkConfig = { DHCP = "yes"; };
        dhcpV4Config = { UseDNS = false; };
        dhcpV6Config = { UseDNS = false; };
      };
    };
  };
  services.resolved = {
    enable = true;
    dnssec = "allow-downgrade";
    fallbackDns = [];
    dnsovertls = "true";
    llmnr = "false";
    domains = [ "~." ];
  };
  environment.systemPackages = with pkgs; [
    impala
  ];

}
