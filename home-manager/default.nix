{ inputs, ... }:

{

  imports = [
    ./zsh/default.nix
#    ./hyprland/default.nix
#    ./schizofox/default.nix
#    ./waybar.nix
    ./modules/bundle.nix
#    ./hyprpaper.nix
  ];

  home = {
    username = "darrow";
    homeDirectory = "/home/darrow";
    stateVersion = "25.05";
  };
}
