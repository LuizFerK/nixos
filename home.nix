{ pkgs, inputs, ... }:

{ 
  imports = [
    inputs.impermanence.nixosModules.home-manager.impermanence
  ];

  home.stateVersion = "23.11";

  # home.persistence."/persist/home" = {
  #   directories = [
  #     "Downloads"
  #     "Pictures"
  #     "Documents"
  #     ".ssh"
  #   ];
  #   allowOther = true;
  # };
}