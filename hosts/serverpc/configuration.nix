
{ config, lib, pkgs, inputs, ... }:

{
	imports = [ 
		./hardware-configuration.nix 
    ./modules

		inputs.home-manager.nixosModules.default
	];

	home-manager = {
		extraSpecialArgs = { inherit inputs; };
		users = {
			"mukeshkannan" = import ../../home/home.nix;
		};
	};

	system.stateVersion = "24.05";
}
