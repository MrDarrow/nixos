{ pkgs, config, inputs, ... }:

{

  nixpkgs.config = {
    
    allowUnfree = true;

  };

  environment.systemPackages = with pkgs; [

  # Desktop apps
  kitty
  librewolf
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
  git
  fzf
  curl
  unar
  p7zip
  swww
  ueberzugpp
  pinentry-curses
  vim
  neovim

  # GUI Utils
  dunst

  # Wine
  wineWowPackages.stable
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
  socat
  html-xml-utils
  libnotify

  ];

}
