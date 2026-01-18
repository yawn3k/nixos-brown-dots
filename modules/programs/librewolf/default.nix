{ pkgs, lib, ... }: 
{
  environment.systemPackages = with pkgs; [ librewolf ];
  environment.etc."librewolf/policies/policies.json".text = builtins.toJSON {
    policies = import ./policies.nix;
  };
}
