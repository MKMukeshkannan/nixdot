

{
	description = "Hola";

	inputs = { 
		nixpkgs.url = "nixpkgs/nixos-unstable"; 
		zen-browser.url = "github:MarceColl/zen-browser-flake";
		home-manager = {
			url = "github:nix-community/home-manager";
			inputs.nixpkgs.follows = "nixpkgs";
		};
	};

	outputs = { self, nixpkgs, ...  }@inputs:
	let
		system = "x86_64-linux";
		pkgs = nixpkgs.legacyPackages.${system};
	in
	{
		nixosConfigurations.MK = nixpkgs.lib.nixosSystem {
			specialArgs = { inherit inputs; };
			modules = [ 
				./hosts
				inputs.home-manager.nixosModules.default
			];
		};
	};
}
