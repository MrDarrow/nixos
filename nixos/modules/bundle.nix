{ pkgs, config, inputs, ... }:

{

  imports = [
  ./nixvim/nixvim.nix

  ./bootloader.nix
  ./lobster.nix
  ./jerry.nix
  ./sound.nix
  ./hyprland.nix
  ./nm.nix
  ./xserver.nix
  ./gpg.nix
  ./user.nix
  ./env.nix
  
  ];

}
