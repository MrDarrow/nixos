{ inputs, ... }:
{
  imports = [
#    ./programs/lf.nix
#    ./programs/newsboat.nix
#   ./programs/foot.nix
#   ./programs/rofi.nix
    ./niri-config.nix
    ./stylix.nix
    ./eww.nix
#
#    ./cursor.nix
#    ./git.nix
    ./yazi.nix
#    ./htop.nix
#    ./alacritty.nix
#    ./gtk.nix
    ./fonts.nix
#    ./dl-scrap.nix
#
  ];
}
