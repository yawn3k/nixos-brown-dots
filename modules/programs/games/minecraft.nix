{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    (prismlauncher.override {
      textToSpeechSupport = false;
      gamemodeSupport = false;
      controllerSupport = true;
      additionalPrograms = [
        ffmpeg
      ];
      jdks = [
        zulu8
        zulu17
        zulu
      ];
    })
  ];
}

