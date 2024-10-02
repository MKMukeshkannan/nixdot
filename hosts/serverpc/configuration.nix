
{ config, lib, pkgs, inputs, ... }:

{
	imports = [ 
		./hardware-configuration.nix 
    ./system

		inputs.home-manager.nixosModules.default
	];

	home-manager = {
		extraSpecialArgs = { inherit inputs; };
		users = {
			"mukeshkannan" = import ../../homeManagerModules/home.nix;
		};
	};

	system.stateVersion = "24.05";
}
