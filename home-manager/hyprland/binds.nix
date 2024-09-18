  let
    mod = "SUPER";
    ctrl = "CONTROL";
    alt = "ALT";
    shift = "SHIFT";

  in
{
  wayland.windowManager.hyprland.settings = {
    bind = [
      "${mod}, RETURN, exec, $terminal"
      "${mod} ${shift}, RETURN, exec, [float;size 50%] $terminal"
      "${mod}, Q, killactive,"
      "${mod} ${shift}, Q, exit,"
      "${mod}, U, togglefloating,"
      "${mod} ${shift}, F, fullscreen"
      ''${mod} ${shift}, Print, exec, grim -g "$(slurp -d)" - | wl-copy''

       # Navigate
      "${mod}, J, layoutmsg, cyclenext"
      "${mod}, K, layoutmsg, cycleprev"
      "${mod} ${shift}, J, layoutmsg, swapnext"
      "${mod} ${shift}, K, layoutmsg, swapprev"

       # Programs
      "${mod}, W, exec, librewolf"
      "${mod}, D, exec, freetube"
      "${mod}, P, exec, rofi -show drun -show-icons"
      "${mod}, F, exec, $terminal yazi"
      "${mod}, N, exec, $terminal newsboat"


       # Move focus with mainMod + arrow keys
      "${mod}, left, movefocus, l"
      "${mod}, right, movefocus, r"
      "${mod}, up, movefocus, u"
      "${mod}, down, movefocus, d"

       # Switch workspaces with mainMod + [0-9]
      "${mod}, 1, workspace, 1"
      "${mod}, 2, workspace, 2"
      "${mod}, 3, workspace, 3"
      "${mod}, 4, workspace, 4"
      "${mod}, 5, workspace, 5"
      "${mod}, 6, workspace, 6"
      "${mod}, 7, workspace, 7"
      "${mod}, 8, workspace, 8"
      "${mod}, 9, workspace, 9"
      "${mod}, 0, workspace, 10"

       # Move active window to a workspace with mainMod + ${shift} + [0-9]       
      "${mod} ${shift}, 1, movetoworkspace, 1"
      "${mod} ${shift}, 2, movetoworkspace, 2"
      "${mod} ${shift}, 3, movetoworkspace, 3"
      "${mod} ${shift}, 4, movetoworkspace, 4"
      "${mod} ${shift}, 5, movetoworkspace, 5"
      "${mod} ${shift}, 6, movetoworkspace, 6"
      "${mod} ${shift}, 7, movetoworkspace, 7"
      "${mod} ${shift}, 8, movetoworkspace, 8"
      "${mod} ${shift}, 9, movetoworkspace, 9"
      "${mod} ${shift}, 0, movetoworkspace, 10"

      "${alt} ${shift}, 1, movetoworkspacesilent, 1"
      "${alt} ${shift}, 2, movetoworkspacesilent, 2"
      "${alt} ${shift}, 3, movetoworkspacesilent, 3"
      "${alt} ${shift}, 4, movetoworkspacesilent, 4"
      "${alt} ${shift}, 5, movetoworkspacesilent, 5"
      "${alt} ${shift}, 6, movetoworkspacesilent, 6"
      "${alt} ${shift}, 7, movetoworkspacesilent, 7"
      "${alt} ${shift}, 8, movetoworkspacesilent, 8"
      "${alt} ${shift}, 9, movetoworkspacesilent, 9"
      "${alt} ${shift}, 0, movetoworkspacesilent, 10"

       # Scroll through existing workspaces with mainMod + scroll
      "${mod}, mouse_down, workspace, e+1"
      "${mod}, mouse_up, workspace, e-1"
     ];

     # Move/resize windows with mainMod + LMB/RMB and dragging
     bindm = [
       "${mod}, mouse:272, movewindow"
       "${mod}, mouse:273, resizewindow"
     ];
  };
}
