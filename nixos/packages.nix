{ pkgs, ... }: {

  environment.systemPackages = with pkgs; [
    (import ./dl-scrap.nix { inherit pkgs; })
    grim
    hyprcursor
    rose-pine-hyprcursor
    slurp
    wl-clipboard
    pfetch
    yazi
    hyprpaper
    wofi
    rofi
    foot
    czkawka
    youtube-music
    ffmpeg
    lutris
    kdePackages.kalk
    kdePackages.dolphin
    nautilus
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
