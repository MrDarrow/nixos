{ config, pkgs, ...}:

{

  fonts.fontconfig.enable = true;

  home.packages = with pkgs; [
    font-awesome
    nanum
    nanum-gothic-coding
    jetbrains-mono
  ];

}
