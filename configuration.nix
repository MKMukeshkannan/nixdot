
{ config, lib, pkgs, inputs, ... }:

{
	imports = [ 
		./hardware-configuration.nix 
		./hyprland.nix
		./network.nix
		./system-options.nix
		./users.nix

		inputs.home-manager.nixosModules.default
	];

	home-manager = {
		extraSpecialArgs = { inherit inputs; };
		users = {
			"mukeshkannan" = import ./home.nix;
		};
	};

	system.stateVersion = "24.05";
}
