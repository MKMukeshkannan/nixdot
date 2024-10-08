{ pkgs, ... }: {

  home.username = "cerberus";
  home.homeDirectory = "/home/cerberus";
  home.stateVersion = "20.09";

  programs.bash = {
    enable = true;
  };

  home.packages = [
    pkgs.htop

    pkgs.jellyfin
    pkgs.jellyfin-web
    pkgs.jellyfin-ffmpeg
  ];

}
