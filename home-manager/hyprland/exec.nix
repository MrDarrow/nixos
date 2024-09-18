{
  wayland.windowManager.hyprland.settings = {
    exec-once = [
      "swww init"
      "swww img ~/Downloads/nixos-chan.png"
      "waybar"
      "wl-paste --type text --watch cliphist store"
      "wl-paste --type image --watch cliphist store"
      "vesktop"
    ];
  };
}
