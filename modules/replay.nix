{ pkgs, ... }:
let
  gpu-screen-recorder-settings = "-o /home/yawn3k/Documents/replay -w screen -a default_output -a default_input -c mp4 -k h264 -ac opus -ab 192 -f 60 -fm vfr -bm qp -q ultra -tune quality -cr full";
in
{
  programs.gpu-screen-recorder.enable = true;
  systemd.user.services.custom-replay = {
    description = "Custom Replay";
    serviceConfig = {
      ExecStart =
        "${pkgs.gpu-screen-recorder}/bin/gpu-screen-recorder "
        + "${gpu-screen-recorder-settings} "
        + "-r 120 -restart-replay-on-save yes";
      KillSignal = "SIGINT";
      Restart = "always";
      RestartSec = "5s";
    };
    wantedBy = [ "default.target" ];
  };
  environment.shellAliases.record = "${pkgs.gpu-screen-recorder}/bin/gpu-screen-recorder ${gpu-screen-recorder-settings}";
  environment.variables.REPLAY = "pkill -f -USR1 gpu-screen-record";
}
