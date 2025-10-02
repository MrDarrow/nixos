{ pkgs, ... }: {

  environment.systemPackages = with pkgs; [
    vim
    libreoffice
    gimp
    unar
    home-manager
    git
    gh
    floorp-bin
    vesktop
    wineWowPackages.wayland
    plasma-panel-colorizer

    mindustry
    mindustry-server

    protonvpn-gui
        mpv
  ];
}
