{ pkgs, inputs, ... }: {

  environment.systemPackages = with pkgs; [
    (import ./dl-scrap.nix { inherit pkgs; })
     
    # Apps
    czkawka
    duckstation
    faugus-launcher
    floorp-bin
    fuzzel
    gimp
    hunspell
    hunspellDicts.es-any
    hunspellDicts.es-ve
    inputs.zen-browser.packages."${system}".default
    inputs.noctalia.packages.${system}.default
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
    bat
    dragon-drop
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
    unar
    vim
    yazi
    zk
    wf-recorder
    slurp

    # Wayland Stuff
    wineWowPackages.wayland
    wl-clipboard
    xwayland-satellite

    # Misc
    home-manager
    uwu-colors
    marksman
    waybar
    hackneyed
    dracula-theme

  ];
}
