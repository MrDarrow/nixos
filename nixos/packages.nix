{ pkgs, config, inputs, ... }:

{

  nixpkgs.config = {
    
    allowUnfree = true;

  };

  environment.systemPackages = with pkgs; [

  # Desktop apps
  kitty
  librewolf
  krita
  obs-studio
  freetube
  vesktop
  mpv
  lutris
  transmission-gtk
  imgbrd-grabber
  rofi-wayland

  # CLI utils
  wget
  neofetch
  gnupg
  pass
  gallery-dl
  gh
  lf
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
  neovim

  # GUI Utils
  dunst
  zathura
  nsxiv

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
