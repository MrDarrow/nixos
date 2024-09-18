{ config, pkgs, ... }:

  let
    dl-scrap = import ./dl-scrap.nix { inherit pkgs; };

  in
  {

    environment.systemPackages = [
      dl-scrap
    ];

  }
