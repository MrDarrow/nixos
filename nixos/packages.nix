{ pkgs, config, inputs, ... }:

{
  
  nixpkgs.config = {
    allowUnfree = true;
  };

  nixpkgs.overlays = [
    (self: super: {
#      librewolf = pkgs-stable.librewolf;
    })
  ];

  environment.systemPackages = with pkgs; [

  # Desktop apps
  librewolf
  krita
  obs-studio
  freetube
  vesktop
  mpv
  lutris
  transmission_3-gtk
  rofi-wayland
  foot

  # CLI utils
  xdragon
  nmap
  wget
  cmatrix
  neofetch
  pfetch
  gnupg
  pass
  gallery-dl
  gh
  yazi
  newsboat
  git
  fzf
  curl
  unar
  jq
  p7zip
  zip
  unzip
  swww
  ueberzugpp
  pinentry-curses
  vim
  htop-vim

  # GUI Utils
  dunst
  zathura
  nsxiv
  libreoffice
  hunspellDicts.es_VE
  osu-lazer-bin

  # Wine
  wineWowPackages.waylandFull
  winetricks

  # Wayland stuff
  xwayland
  wl-clipboard

  # WMs and stuff
  hyprland
  xdg-desktop-portal-hyprland
  waybar

  # Sound
  pulsemixer

  # Screenshotting and video
  grim
  slurp
  wf-recorder

  # Other
  syncthing
  home-manager
  libsForQt5.qtstyleplugin-kvantum
  libsForQt5.qt5.qtwayland
  libsForQt5.qt5ct
  socat
  html-xml-utils
  libnotify
  pywal
  gst_all_1.gst-plugins-bad

  ];
}
