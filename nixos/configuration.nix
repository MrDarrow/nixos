{ inputs, ... }:

{
  imports =
    [ 
      ./hardware-configuration.nix
      ./packages.nix
      ./modules/bundle.nix
    ];

  disabledModules = [
    ./modules/xserver.nix
  ];
  
#  stylix.image = /home/darrow/Downloads/nixos-chan.png;

  networking.hostName = "nixos"; # Define your hostname.

  time.timeZone = "America/Caracas"; # Set your time zone.
  
  i18n.defaultLocale = "en_US.UTF-8"; # Select internationalisation properties.

  nix.settings.experimental-features = [ "nix-command" "flakes" ]; # Enabling flakes

  system.stateVersion = "24.05"; # Did you read the comment?

}
