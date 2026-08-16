{ pkgs, inputs, ... }: {
  
  stylix = {

    enable = true;
    image = ./niri/1.png;
    polarity = "dark";
    opacity = {
      terminal = 0.9;
    };

    targets = {
      nixvim.transparentBackground.main = true;
    };

  };
}
