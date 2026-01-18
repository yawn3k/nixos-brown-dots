{ config, pkgs, ... }:
{
  services.xserver.videoDrivers = ["nvidia"];
  environment.systemPackages = with pkgs; [
    nv-codec-headers
    nvidia-vaapi-driver  
  ];
  hardware = {
    graphics = {
      enable = true; # Enable OpenGL
      enable32Bit = true;
      extraPackages = with pkgs; [
        nvidia-vaapi-driver
        libva-vdpau-driver
        libvdpau-va-gl
      ];
    };
    nvidia = {
      modesetting.enable = true;
      powerManagement.enable = true;
      powerManagement.finegrained = false;
      open = true; # FOSS Kernel Module
      nvidiaSettings = false; # Nvidia X-Server Settings App
      package = config.boot.kernelPackages.nvidiaPackages.beta;
    };
  };
  environment.variables = {
    __GLX_VENDOR_LIBRARY_NAME = "nvidia";
    LIBVA_DRIVER_NAME = "nvidia";
    __GL_MaxFramesAllowed = "2";
    __GL_SHADER_DISK_CACHE_SKIP_CLEANUP = "1";
    __GL_SHADER_DISK_CACHE_SIZE = "21474836480";
    __GL_SHADER_DISK_CACHE = "1";
  };
}
