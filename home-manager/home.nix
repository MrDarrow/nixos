{ config, pkgs, ... }:

{
  
  imports = [
    ./modules/bundle.nix
    ./zsh.nix
    ];
  
  home = {
    username = "darrow";
    homeDirectory = "/home/darrow";
    stateVersion = "23.11";
  };
}
