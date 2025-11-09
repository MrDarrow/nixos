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
}
