{ config, pkgs, ...}:

{

  fonts.fontconfig.enable = true;

  home.packages = with pkgs; [
    font-awesome
    jetbrains-mono
    nerd-fonts.symbols-only
  ];

}
