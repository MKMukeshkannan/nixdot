{ config, pkgs, ... }:

{
	networking.hostName =  "MK";
	networking.networkmanager.enable = true;
}
