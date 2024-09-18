  let
    mod = "SUPER";
    ctrl = "CONTROL";
    alt = "ALT";
    shift = "SHIFT";

  in
{


  wayland.windowManager.hyprland.settings = {
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
}
