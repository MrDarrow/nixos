{
  programs.yazi = {
    enable = true;

    settings = {
      manager = {
        show_hidden = false;
        sort_by = "modified";
        sort_dir_first = true;
        sort_reverse = false;
        sort_sensitive = false;
        sort_translit = false;
        linemode = "none";
        show_symlink = true;
        scrolloff = "5";
        mouse_events = { 
          "click";
          "scrolls";
        };
        tittle_format = "Yazi: {cwd}";
      };
        
    };
  };
}
