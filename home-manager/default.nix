{ inputs, ... }:

{

  imports = [
    ./zsh/default.nix
    ./hyprland/default.nix
    ./schizofox/default.nix
    ./waybar.nix
    ./modules/bundle.nix
  ];

  home = {
    username = "darrow";
    homeDirectory = "/home/darrow";
    stateVersion = "23.11";
  };
}
