{
  pkgs,
  inputs,
  ...
}: {
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  nix.settings.experimental-features = ["nix-command" "flakes"];

  programs.thunar.enable = true;

  environment.systemPackages = with pkgs; [
    rofi-wayland
    waybar
    vim-full
    wget
    swww
    xclip

    inputs.zen-browser.packages."${system}".generic
  ];
}
