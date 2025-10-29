{ pkgs, inputs, ... }: {
  
  stylix = {
  enable = true;
  image = ./1.png;
  polarity = "dark";
  targets = {
    nixvim.transparentBackground.main = true;
  };
  };
}
