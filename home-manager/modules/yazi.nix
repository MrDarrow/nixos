{
  programs.yazi = {
    enable = true;
    settings = {
      mgr = {
        sort_by = "mtime";
	      sort_reverse = true; 
      };
      tasks = {
        image_bound = [ 10000 10000];
      };
      preview = {
        max_width = 3000;
        max_height = 3000;
        image_quality = 90;
        image_filter = "lanczos3";
      };
    };
  };
  xdg.mimeApps = {
    enable = true;
    defaultApplications = {
      "image/jpeg" = "qimgv.desktop";
      "image/png" = "qimgv.desktop";
      "image/gif" = "qimgv.desktop";
      "image/webp" = "qimgv.desktop";
      "image/svg+xml" = "qimgv.desktop";
      # Add other image/* types as needed
    };
  };
}
