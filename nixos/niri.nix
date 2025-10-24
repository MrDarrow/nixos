{ pkgs, ...}: {
  nixpkgs.overlays = [ inputs.niri.overlays.niri ];
  programas.niri.package = pkgs.niri-unstable;

  programs.niri.enable = true;

}
