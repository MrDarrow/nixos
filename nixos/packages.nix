{ pkgs, ... }:

  enviroment.systemPackages = with pkgs; [
    vim
    libreoffice
    gimp
    unar
    home-manager
    git
    gh
    floorp
    vesktop
    wineWowPackages.wayland

    mindustry
    mindustry-server

    protonvpn-gui
    mpv
  ];
