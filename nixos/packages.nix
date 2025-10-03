{ pkgs, ... }: {

  environment.systemPackages = with pkgs; [
    foot
    swww
    hyprpaper
    pulsemixer
    kitty
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
    waybar
    htop-vim

    mindustry
    mindustry-server

    protonvpn-gui
        mpv
	fzf
  ];
}
