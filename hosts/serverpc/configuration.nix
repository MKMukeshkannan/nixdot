{inputs, ...}: {
  imports = [
    ./hardware-configuration.nix
    ./modules

    inputs.home-manager.nixosModules.default
  ];

  system.stateVersion = "24.05";
}
