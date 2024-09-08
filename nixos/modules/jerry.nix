{ inputs, pkgs, ... }:

{

  environment.systemPackages = [
    inputs.jerry.packages.x86_64-linux.jerry
  ];

}
