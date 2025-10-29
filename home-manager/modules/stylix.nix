{ pkgs, inputs, ... }: {
  imports = [ inputs.stylix.homeManagerModules.stylix ];
  
  stylix = {
  enable = true;
  image = "../../nixos/1.png";
  polarity = "dark";
  targets = {
    foot.enable = true;
  };
  };
}
