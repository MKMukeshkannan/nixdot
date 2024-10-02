{ config, pkgs, ... }: 

{
	users.users.mukeshkannan = {
		isNormalUser = true;
		extraGroups = [ "wheel" "networkmanager" ];
		packages = with pkgs; [  ];
	};
}
