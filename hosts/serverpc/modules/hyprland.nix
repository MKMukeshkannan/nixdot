



{ config, pkgs, ... }:

{
	programs.hyprland.enable = true;
	programs.hyprland.xwayland.enable = true;
	environment.sessionVariables = 
	{
		WLR_NO_HARDWARE_CURSORS = "1";
		NIXOS_OZONE_WL = "1";
	};
	hardware = { graphics.enable = true; };
}
