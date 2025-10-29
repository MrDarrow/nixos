{ pkgs, inputs, ... }: {
  
  stylix = {
    enable = true;
    image = ./1.png;
    polarity = "dark";
    opacity = {
      terminal = 0.8;
    };
    targets = {
      nixvim.transparentBackground.main = true;
    };
  };
}
