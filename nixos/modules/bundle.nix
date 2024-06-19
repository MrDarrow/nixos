{ pkgs, config, inputs, ... }:

{

  imports = [
  
  ./bootloader.nix
  ./sound.nix
  ./hyprland.nix
  ./nm.nix
  ./xserver.nix
  ./gpg.nix
  ./user.nix
  ./env.nix
  
  ];

}
