{ config, pkgs, inputs, ... }: 

{
	programs.zsh.enable = true;

	users.users.mukeshkannan = {
		isNormalUser = true;
		extraGroups = [ "wheel" "networkmanager" ];
		packages = with pkgs; [  ];
		shell = pkgs.zsh;
	};


	users.users.cerberus = {
		isNormalUser = true;
		extraGroups = [ "wheel" "networkmanager" ];
		packages = with pkgs; [  ];
		shell = pkgs.zsh;
	};
}
