{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs?ref=nixos-unstable";
    home-manager = { url = "github:nix-community/home-manager"; inputs.nixpkgs.follows = "nixpkgs"; };
    stylix = { url = "github:danth/stylix"; inputs.nixpkgs.follows = "nixpkgs"; };
  };
  outputs = { self, nixpkgs, ... }@ inputs: 
  {
    nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
      specialArgs = {
        inherit inputs;
      };
      system = "x86_64-linux";
      modules = [
        inputs.home-manager.nixosModules.default # Enables Home-Manager
        inputs.stylix.nixosModules.stylix # Enable Stylix

        /etc/nixos/hardware-configuration.nix
        ./modules

        {
          nix.settings.experimental-features = [ "flakes" "nix-command" ];
          system.stateVersion = "24.05";
          programs.nix-ld.enable = true;
          nixpkgs.config.allowUnfree = true;
          environment.variables.FLAKE_DIR = "$HOME/.config/nixos";
          home-manager.extraSpecialArgs = { inherit inputs; };
        }
      ];
    };
  };
}
