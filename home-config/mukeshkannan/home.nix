{
  inputs,
  pkgs,
  ...
}: {
  home.username = "mukeshkannan";
  home.homeDirectory = "/home/mukeshkannan";

  home.stateVersion = "24.05";
  home.packages = [];
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

  programs.zsh.plugins = [
    {
      name = "powerlevel10k";
      src = pkgs.zsh-powerlevel10k;
      file = "share/zsh-powerlevel10k/powerlevel10k.zsh-theme";
    }
  ];
  programs.zsh = {
    enable = true;
    oh-my-zsh = {
      enable = true;
      plugins = ["git"];
    };

    initExtra = ''
      source ./.p10k.zsh
    '';
    shellAliases = {cvim = "vim -c ':vsplit input.txt' -c ':split output.txt' -c ':vertical resize 40' ./main.cpp";};
  };

  programs.home-manager.enable = true;
}
