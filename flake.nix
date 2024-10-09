{
  description = "Hola";

  inputs = {
    nixpkgs.url = "nixpkgs/nixos-unstable";
    zen-browser.url = "github:MarceColl/zen-browser-flake";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nixvim = {
      url = "github:nix-community/nixvim";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, home-manager, nixvim, ...  }@inputs: {

    nixosConfigurations.MK = nixpkgs.lib.nixosSystem {
      specialArgs = {inherit inputs;};
      modules = [ ./hosts ];
    };

    homeConfigurations.MK = home-manager.lib.homeManagerConfiguration {
      modules = [
        ./home-config/mukeshkannan/home.nix
        nixvim.homeManagerModules.nixvim
      ];
    };

  };
}
