{
  wayland.windowManager.hyprland = {
   settings = {
      env = [
      "XDG_SESSION_TYPE, wayland"
      "XDG_CURRENT_DESKTOP, Hyprland"
      "XDG_SESSION_DESKTOP, Hyprland"

      "GDK_BACKEND, wayland, x11"
      "QT_QPA_PLATFORM, wayland;xcb"

      "XCURSOR_SIZE, 24"
    ];

    input = {
     kb_layout = "us,latam";
     kb_options = "grp:caps_toggle";
     kb_variant = "";
     numlock_by_default = 1;

     follow_mouse = 1;

     touchpad = {
       natural_scroll = false;
     };

     sensitivity = 0; # -1.0 - 1.0, 0 means no modification.
   };

    monitor = [

      "LVDS-1,1920x1080@60,1920x0,1"
      "VGA-1, 1920x1200@60, 0x0, 1"
      ",preferred,auto,auto"

      ];
      debug = {
        disable_logs = false;
        enable_stdout_logs = true;
      };

      general = {
        gaps_in = 5;
        gaps_out = 20;
        border_size = 3;
        "col.active_border" = "rgba(ebe1c0ee) rgba(ebe1c0ee) 45deg";
        "col.inactive_border" = "rgba(a49d86aa)";

        layout = "master";

      };
 master = {
  new_status="master";
   new_on_top=1;
   mfact = 0.5;
 };


      decoration = {
        rounding = 10;

        blur = {
          enabled = true;
          size = 16;
          passes = 2;
          new_optimizations = true;
        };

        drop_shadow = true;
        shadow_range = 4;
        shadow_render_power = 3;
        "col.shadow" = "rgba(120f10ee)";
      };



      gestures = {
        workspace_swipe = true;
        workspace_swipe_fingers = 3;
        workspace_swipe_invert = false;
        workspace_swipe_distance = 200;
        workspace_swipe_forever = true;
      };
      animations = {
        enabled = true;

        bezier = "myBezier, 0.05, 0.9, 0.1, 1.05";
        # bezier = "myBezier, 0.33, 0.82, 0.9, -0.08";

        animation = [
          "windows,     1, 7,  myBezier"
          "windowsOut,  1, 7,  default, popin 80%"
          "border,      1, 10, default"
          "borderangle, 1, 8,  default"
          "fade,        1, 7,  default"
          "workspaces,  1, 6,  default"
        ];
      };

      dwindle = {
        pseudotile = true; # master switch for pseudotiling. Enabling is bound to mainMod + P in the keybinds section below
        preserve_split = true; # you probably want this
      };

      misc = {
        animate_manual_resizes = true;
        animate_mouse_windowdragging = true;
        enable_swallow = true;
        render_ahead_of_time = false;
        disable_hyprland_logo = true;
      };

        windowrulev2 = [
	"workspace 2 silent, class:vesktop"
	"workspace 4, silent, class:transmission"
	"float, title:(Open Files)"
	"float, title:(Image .* Grabber)"
	"size 70%, title:(Image .* Grabber)"
	"center (1), title:(Image .* Grabber)"
        "float, title:(.* mpv)" 
	"size 70%, title:(.* mpv)"
	"center (1), title:(.* mpv)"
        ];
    };
  };
}


