{ inputs, ... }:

{

  imports = [
    ./zsh.nix
    ./hyprland/default.nix
    ./waybar.nix
    ./Schizofox/schizofox.nix
    ./modules/bundle.nix
  ];

  home = {
    username = "darrow";
    homeDirectory = "/home/darrow";
    stateVersion = "23.11";
  };
}
