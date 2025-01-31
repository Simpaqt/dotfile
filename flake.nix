{
  description = "A very basic flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };

  outputs = { self, nixpkgs } @ inputs: {

    nixosConfigurations.nixos = nixpkgs.lib.nixosSystem
      {
        specialArgs = { inherit inputs; };
        modules = [
          ./configuration.nix
          ./hardware-configuration.nix
          ./programming-languages.nix
          ./desktop-applications.nix
          ./fonts.nix
          ./tools.nix
          ./gaming.nix

        ];
      };
  };
}
