{
  wayland.windowManager.hyprland = {
    enable = true;
    xwayland.enable = true;

    settings = {
      monitor = [
        "LVDS-1,1920x1080@60, 1920x0,1"
	"VGA-1, 1920x1200@60, 0x0, 1"
	",preferred,auto,auto"
      ];

      general = {
        gaps_in = 5;
	gaps_out = 15;
	border_size = 3;

	"col.active_vorder" = "rgba(33ccffee) rgba(00ff99ee) 45deg";
	"col.inactive_border" = "rgba(595959aa	)";

        resezise_on_border = "true";

	aloow_tearing = "false";

	layout = "master";
     };
    };
