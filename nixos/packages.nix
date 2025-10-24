{ pkgs, ... }: {

  environment.systemPackages = with pkgs; [
    (import ./dl-scrap.nix { inherit pkgs; })
    wl-clipboard
    xwayland-satellite
    waybar
    pywal
    mako
    swaybg
    foot
    alacritty
    fuzzel
    keepassxc
    thunderbird
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
    htop-vim

    protonvpn-gui
    mpv
    fzf

  ];
}
