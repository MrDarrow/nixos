{
  imports = [
    ./binds.nix
    ./exec.nix
    ./config.nix
  ];

  wayland.windowManager.hyprland = {
    enable = true;
    xwayland.enable = true;

#    settings = {
#      monitor = [
#
#      "LVDS-1,1920x1080@60,1920x0,1"
#      "VGA-1, 1920x1200@60, 0x0, 1"
#      ",preferred,auto,auto"
#
#      ];
#      debug = {
#        disable_logs = false;
#        enable_stdout_logs = true;
#      };
#
#      general = {
#        gaps_in = 5;
#        gaps_out = 20;
#        border_size = 3;
#        "col.active_border" = "rgba(ebe1c0ee) rgba(ebe1c0ee) 45deg";
#        "col.inactive_border" = "rgba(a49d86aa)";
#
#        layout = "master";
#
#      };
# master = {
#  new_status="master";
#   new_on_top=1;
#   mfact = 0.5;
# };
#
#
#      decoration = {
#        rounding = 10;
#
#        blur = {
#          enabled = true;
#          size = 16;
#          passes = 2;
#          new_optimizations = true;
#        };
#
#        drop_shadow = true;
#        shadow_range = 4;
#        shadow_render_power = 3;
#        "col.shadow" = "rgba(120f10ee)";
#      };
#
#
#
#      gestures = {
#        workspace_swipe = true;
#        workspace_swipe_fingers = 3;
#        workspace_swipe_invert = false;
#        workspace_swipe_distance = 200;
#        workspace_swipe_forever = true;
#      };
#    };
#  };
 };
}
