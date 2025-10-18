{
  wayland.windowManager.hyprland.settings = {
    exec-once = [
      "hyprctl dispatch workspace 1"
      "waybar"
      "hyprpaper"
      "wl-paste --type text --watch cliphist store"
      "wl-paste --type image --watch cliphist store"
      "vesktop"
      "steam"
    ];
  };
}
