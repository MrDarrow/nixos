{ config, lib, ... }:
{
  services.hyprpaper = {
    enable = true
    settings = { 
      splash = false;
      splash_offset = 2.0;

      preload = [ "/share/wallpapers/buttons.png" "/share/wallpapers/cat_pacman.png" ];

      wallpaper = [
        "DP-3,/share/wallpapers/buttons.png"
        "DP-1,/share/wallpapers/cat_pacman.png"
      ];
    };
  };
}
