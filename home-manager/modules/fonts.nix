{ config, pkgs, ...}:

{

  fonts.fontconfig.enable = true;

  home.packages = with pkgs; [
    font-awesome
    nerdfonts
    jetbrains-mono
  ];

}
