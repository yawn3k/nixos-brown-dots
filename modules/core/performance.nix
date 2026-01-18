{
  services = {
    scx = {
      enable = true; # Enables sched-ext schedulers
      scheduler = "scx_lavd";
    };
    power-profiles-daemon.enable = true;
  };
  zramSwap = {
    enable = true;
    algorithm = "zstd";
    memoryPercent = 25;
    priority = 5;
  };
  # security.pam.loginLimits = [{ domain = "*"; type = "-"; item = "memlock"; value = "unlimited"; }]; # Infinite Memlock
}

