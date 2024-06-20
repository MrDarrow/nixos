{
  programs.kitty = {
    enable = true;

    font = {
      size = 13.0;
      name = "JetBrains Mono";
      };

    extraConfig = "
    \nconfirm_os_window_close 0
    \nbackground_opacity 0.75
    \ninclude ~/.cache/wal/colors-kitty.conf
    ";

  };
 }

