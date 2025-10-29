{ pkgs, inputs, ... }: {

  environment.systemPackages = with pkgs; [
    (import ./dl-scrap.nix { inherit pkgs; })
    wl-clipboard
    xwayland-satellite
    yazi
    mednafen
    chafa
    fzf
    feh
    mako
    transmission-gtk
    waybar
    swaylock
    pywal
    swaybg
    foot
    fuzzel
    keepassxc
    thunderbird
    czkawka
    youtube-music
    ffmpeg
    lutris
    kdePackages.kalk
    kdePackages.dolphin
    kdePackages.gwenview
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
    htop-vim

    protonvpn-gui
    mpv
    fzf

  ];
}
