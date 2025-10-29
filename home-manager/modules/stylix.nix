{ pkgs, inputs, ... }: {
  
  stylix = {
  enable = true;
  image = "../../nixos/1.png";
  polarity = "dark";
  targets = {
    foot.enable = true;
  };
  };
}
