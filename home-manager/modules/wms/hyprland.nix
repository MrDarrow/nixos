{
  wayland.windowManager.hyprland = {
    enable = true;
    xwayland.enable = true;

    settings = {
      "$terminal" = "kitty";
      "$mainMod" = "SUPER";

      monitor = [

      "LVDS-1,1920x1080@60,1920x0,1"
      "VGA-1, 1920x1200@60, 0x0, 1"
      ",preferred,auto,auto"

      ];

      exec-once = [
        "swww init"
        "swww img ~/Downloads/nixos-chan.png"
        "waybar"
        "wl-paste --type text --watch cliphist store"
        "wl-paste --type image --watch cliphist store"
	"vesktop"
      ];


      env = [
        "XDG_CURRENT_DESKTOP,Hyprland"
        "XDG_SESSION_TYPE,wayland"
        "XDG_SESSION_DESKTOP,Hyprland"
        "XCURSOR_SIZE,24"
      ];

      debug = {
        disable_logs = false;
        enable_stdout_logs = true;
      };

      general = {
        gaps_in = 5;
        gaps_out = 20;
        border_size = 3;
        "col.active_border" = "rgba(3f2a4dee) rgba(32213dee) 45deg";
        "col.inactive_border" = "rgba(595959aa)";

        layout = "master";

      };

      input = {
        kb_layout = "us,es";
        kb_variant = "";
        kb_options = "grp:caps_toggle";

        follow_mouse = 1;

        touchpad = {
          natural_scroll = false;
        };

        sensitivity = 0; # -1.0 - 1.0, 0 means no modification.
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

      master = {
        new_is_master = true;
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
        "col.shadow" = "rgba(1a1a1aee)";
      };



      gestures = {
        workspace_swipe = true;
        workspace_swipe_fingers = 3;
        workspace_swipe_invert = false;
        workspace_swipe_distance = 200;
        workspace_swipe_forever = true;
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


      bind = [
        # Example binds, see https://wiki.hyprland.org/Configuring/Binds/ for more
       "$mainMod, RETURN, exec, $terminal"
       "$mainMod SHIFT, RETURN, exec, [float;size 50%] $terminal"
       "$mainMod, Q, killactive,"
       "$mainMod SHIFT, Q, exit,"
       "$mainMod, U, togglefloating,"
       "$mainMod SHIFT, F, fullscreen"
       ''$mainMod SHIFT, Print, exec, grim -g "$(slurp -d)" - | wl-copy''

        # Navigate
       "$mainMod, J, layoutmsg, cyclenext"
       "$mainMod, K, layoutmsg, cycleprev"
       "$mainMod SHIFT, J, layoutmsg, swapnext"
       "$mainMod SHIFT, K, layoutmsg, swapprev"

        # Programs
       "$mainMod, W, exec, librewolf"
       "$mainMod, D, exec, freetube"
       "$mainMod, P, exec, rofi -show drun -show-icons"
       "$mainMod, F, exec, $terminal yazi"
       "$mainMod, N, exec, $terminal newsboat"


        # Move focus with mainMod + arrow keys
       "$mainMod, left, movefocus, l"
       "$mainMod, right, movefocus, r"
       "$mainMod, up, movefocus, u"
       "$mainMod, down, movefocus, d"

        # Switch workspaces with mainMod + [0-9]
       "$mainMod, 1, workspace, 1"
       "$mainMod, 2, workspace, 2"
       "$mainMod, 3, workspace, 3"
       "$mainMod, 4, workspace, 4"
       "$mainMod, 5, workspace, 5"
       "$mainMod, 6, workspace, 6"
       "$mainMod, 7, workspace, 7"
       "$mainMod, 8, workspace, 8"
       "$mainMod, 9, workspace, 9"
       "$mainMod, 0, workspace, 10"

        # Move active window to a workspace with mainMod + SHIFT + [0-9]       
       "$mainMod SHIFT, 1, movetoworkspace, 1"
       "$mainMod SHIFT, 2, movetoworkspace, 2"
       "$mainMod SHIFT, 3, movetoworkspace, 3"
       "$mainMod SHIFT, 4, movetoworkspace, 4"
       "$mainMod SHIFT, 5, movetoworkspace, 5"
       "$mainMod SHIFT, 6, movetoworkspace, 6"
       "$mainMod SHIFT, 7, movetoworkspace, 7"
       "$mainMod SHIFT, 8, movetoworkspace, 8"
       "$mainMod SHIFT, 9, movetoworkspace, 9"
       "$mainMod SHIFT, 0, movetoworkspace, 10"

       "ALT SHIFT, 1, movetoworkspacesilent, 1"
       "ALT SHIFT, 2, movetoworkspacesilent, 2"
       "ALT SHIFT, 3, movetoworkspacesilent, 3"
       "ALT SHIFT, 4, movetoworkspacesilent, 4"
       "ALT SHIFT, 5, movetoworkspacesilent, 5"
       "ALT SHIFT, 6, movetoworkspacesilent, 6"
       "ALT SHIFT, 7, movetoworkspacesilent, 7"
       "ALT SHIFT, 8, movetoworkspacesilent, 8"
       "ALT SHIFT, 9, movetoworkspacesilent, 9"
       "ALT SHIFT, 0, movetoworkspacesilent, 10"

        # Scroll through existing workspaces with mainMod + scroll
       "$mainMod, mouse_down, workspace, e+1"
       "$mainMod, mouse_up, workspace, e-1"
      ];

      # Move/resize windows with mainMod + LMB/RMB and dragging
      bindm = [
        "$mainMod, mouse:272, movewindow"
        "$mainMod, mouse:273, resizewindow"
      ];
    };
  };
}
