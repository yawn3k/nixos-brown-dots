{ pkgs, ... }:
{
  programs.bash = {
    enable = true;
    completion.enable = true;
    blesh.enable = true;
    promptInit = "";
    interactiveShellInit = builtins.concatStringsSep "\n" (
      map builtins.readFile [
        ./bash.sh
        ./blesh.sh
        ./nixos.sh
        ./functions.sh
        ../../programs/cli/yazi/yazi-bash.sh
      ]
    );
  };
}
