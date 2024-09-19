let
  active = "5e81acaa";
  inactive = "a19fa1aa";

in
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

    general = {
      gaps_in = 5;
      gaps_out = 15;
      border_size = 3;
 
      "col.active_border" = "rgba(${active})";
      "col.inactive_border" = "rgba(${inactive})"; #a49d86aa
 
      layout = "master";
 
    };
 
    misc = {
      force_default_wallpaper = 0;
      disable_hyprland_logo = true;
      disable_splash_rendering = true;

      render_ahead_of_time = false;

      enable_swallow = true;
      swallow_regex = "^(foot).*$";

    };

    decoration = {
      rounding = 0;

      blur = {
        enabled = true;
        size = 16;
        passes = 2;
        new_optimizations = true;
      };

      drop_shadow = true;
      shadow_range = 3;
      shadow_render_power = 2;
      shadow_ignore_window = true;
      "col.shadow" = "rgba(120f10ee)";
    };

    animations = {
      enabled = false;

      bezier = "myBezier, 0.05, 0.9, 0.1, 1.05";

      animation = [
        "windows,     1, 7,  myBezier"
        "windowsOut,  1, 7,  default, popin 80%"
        "border,      1, 10, default"
        "borderangle, 1, 8,  default"
        "fade,        1, 7,  default"
        "workspaces,  1, 6,  default"
      ];
    };

    master = {
      new_status="master";
      new_on_top=1;
      mfact = 0.5;
    };

    dwindle = {
      pseudotile = true;
      preserve_split = true;
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
      "float,title:(pulsemixer)"
      "size 70%, title:(pulsemixer)"
      "center (1), title:(pulsemixer)"
    ];
 
    monitor = [
      "LVDS-1,1920x1080@60,1920x0,1"
      "VGA-1, 1920x1200@60, 0x0, 1"
      ",preferred,auto,auto"
    ];
 
    };
  };
}


