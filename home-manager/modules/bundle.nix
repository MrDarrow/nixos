{ pkgs, config, lib, ...}:

{
  imports = [
    ./programs/lf.nix
    ./programs/home-manager.nix

    ./fonts.nix
    ./gtk.nix

    ./wm/hyprland.nix
    ./wm/waybar.nix
  ];
}
