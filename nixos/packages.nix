{ pkgs, ... }: {

  environment.systemPackages = with pkgs; [
    (import ./dl-scrap.nix { inherit pkgs; })
    wl-clipboard
    czkawka
    youtube-music
    ffmpeg
    lutris
    kdePackages.kalk
    kdePackages.dolphin
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
    waybar
    htop-vim

    protonvpn-gui
    mpv
    fzf
  ];
}
