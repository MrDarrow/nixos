{ pkgs, inputs, ... }: {

  environment.systemPackages = with pkgs; [
    (import ./dl-scrap.nix { inherit pkgs; })
     
    # Apps
    czkawka
    faugus-launcher
    floorp-bin
    fuzzel
    gimp
    hunspell
    hunspellDicts.es-any
    hunspellDicts.es-ve
    kdePackages.dolphin
    kdePackages.gwenview
    keepassxc
    libreoffice
    mpv
    protonvpn-gui
    thunderbird
    transmission_4-gtk
    vesktop
    youtube-music

    # CLI
    bc
    feh
    ffmpeg
    foot
    fzf
    gh
    git
    helix
    htop-vim
    mako
    mednafen
    unar
    vim
    yazi

    # Wayland Stuff
    wineWowPackages.wayland
    wl-clipboard
    xwayland-satellite

    # Misc
    home-manager
    swaybg
    swaylock
    uwu-colors
    waybar

  ];
}
