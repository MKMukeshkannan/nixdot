{
  inputs,
  pkgs,
  ...
}: {
  home.username = "mukeshkannan";
  home.homeDirectory = "/home/mukeshkannan";

  home.stateVersion = "24.05";
  home.packages = [
    inputs.nixvim.packages.x86_64-linux.default
    pkgs.zsh-powerlevel10k
  ];
  home.file = {};
  home.sessionVariables = {};

  programs.git = {
    enable = true;
    userName = "MKMukeshKannan";
    userEmail = "mukeshkannan311@gmail.com";
  };

  programs.kitty = {
    enable = true;
    font = {
      name = "meslo-lgs-nf";
      size = 11.0;
    };
    themeFile = "SpaceGray_Eighties";
    extraConfig = ''
      window_padding_width 20
    '';
  };

  programs.zsh = {
    enable = true;
    oh-my-zsh = {
      enable = true;
      plugins = ["git"];
      theme = "robbyrussell";
    };

    shellAliases = {cvim = "vim -c ':vsplit input.txt' -c ':split output.txt' -c ':vertical resize 40' ./main.cpp";};
  };

  programs.home-manager.enable = true;
}
