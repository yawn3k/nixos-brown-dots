{ pkgs, lib, config, ... }:
{
  boot = {
    kernelPackages = pkgs.linuxPackages_latest // {
      kernel = pkgs.linuxPackages_latest.kernel.override {
        structuredExtraConfig = {
          HZ_1000 = true;
          HZ = 1000;
          PREEMPT_FULL = true;
          IOSCHED_BFQ = true;
          DEFAULT_BFQ = true;
          DEFAULT_IOSCHED = "bfq";
          V4L2_LOOPBACK = "module";
          HID = true;
        };
      };
    };
    kernelParams = if builtins.elem "kvm-amd" config.boot.kernelModules then [ "amd_pstate=active" "nosplit_lock_mitigate" "clearcpuid=514" ] else [ "nosplit_lock_mitigate" ];
    kernelModules = [ "ntsync" ];
    kernel.sysctl = {
      "vm.swappiness" = 10;
      "vm.vfs_cache_pressure" = 50;
      "vm.dirty_bytes" = 268435456;
      "vm.max_map_count" = 16777216;
      "vm.dirty_background_bytes" = 67108864;
      "vm.dirty_writeback_centisecs" = 1500;
      "kernel.nmi_watchdog" = 0;
      "kernel.unprivileged_userns_clone" = 1;
      "kernel.printk" = "3 3 3 3";
      "kernel.kptr_restrict" = 2;
      "kernel.kexec_load_disabled" = 1;
      "kernel.split_lock_mitigate" = 0;
    };
    kernel.features.lto = true;
    supportedFilesystems = {
      ntfs = true;
      zfs = lib.mkForce false;
    };
    tmp.cleanOnBoot = true;
  };
  services.udev.extraRules = ''
    ACTION=="add|change", SUBSYSTEM=="block", ATTR{queue/scheduler}="bfq"
  '';
}
