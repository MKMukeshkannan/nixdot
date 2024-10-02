{ config, pkgs, ... }: 

{
	boot.loader.systemd-boot.enable = true;
	boot.loader.efi.canTouchEfiVariables = true;

	nix.settings.experimental-features = [ "nix-command" "flakes" ];

	environment.systemPackages = with pkgs; [
		rofi-wayland
		brave
		waybar
		neovim
		vim 
		wget
		kitty
	];
}
