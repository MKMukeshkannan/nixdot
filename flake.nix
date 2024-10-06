{
  description = "Hola";

  inputs = {
    nixpkgs.url = "nixpkgs/nixos-unstable";
    zen-browser.url = "github:MarceColl/zen-browser-flake";
    nixvim = {url = "github:dc-tec/nixvim";};
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = {
    self,
    nixpkgs,
    home-manager,
    ...
  } @ inputs: {
    nixosConfigurations.MK = nixpkgs.lib.nixosSystem {
      specialArgs = {inherit inputs;};
      modules = [
        ./hosts

        home-manager.nixosModules.default
        {
          home-manager = {
            extraSpecialArgs = {inherit inputs;};
            users = {
              "mukeshkannan" = import ./home/home.nix;
            };
          };
        }
      ];
    };
  };
}
