{ config, pkgs, inputs, ... }:

{

  home.username = "mukeshkannan";
  home.homeDirectory = "/home/mukeshkannan";

  home.stateVersion = "24.05"; # Please read the comment before changing.
  home.packages = [ ];
  home.file = { };
  home.sessionVariables = { };


  programs.git.enable = true;
  programs.neovim = {
    enable = true;
    extraConfig = ''
      set number relativenumber
    '';
  };

  programs.git = {
  	userName = "MKMukeshKannan";
	userEmail = "mukeshkannan311@gmail.com";
  };

  programs.zsh = {
    enable = true;
    oh-my-zsh = { 
    	enable = true; 
	plugins = [ ];
    };
  };

  programs.home-manager.enable = true;
}
