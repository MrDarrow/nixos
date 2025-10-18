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
    };
  };
}
