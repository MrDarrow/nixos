{ pkgs, ... }: {

  environment.systemPackages = with pkgs; [
    (import ./dl-scrap.nix { inherit pkgs; })
    kitty
    wofi
    foot
    czkawka
    youtube-music
    ffmpeg
    lutris
    kdePackages.kalk
    vim
    libreoffice
    hunspell
    hunspellDicts.es-ve
    hunspellDicts.es-any
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
