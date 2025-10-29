{ inputs, ... }: {
  programs.nixvim = {
    enable = true;
    defaultEditor = true;
    plugins = {
      vim-css-color.enable = true;
      vimwiki = {
        enable = true;
        settings = 
          {
            autowriteall = 0;
            global_ext = 0;
            hl_cb_checked = 1;
            hl_headers = 1;
            key_mappings = {
              all_maps = 1;
              global = 1;
              headers = 1;
            };
            list = [
              {
                ext = ".md";
                path = "~/docs/notes/";
                syntax = "markdown";
              }
            ];
            listsym_rejected = "✗";
            listsyms = "○◐●✓";
            use_calendar = 1;
          };
      };
      neoscroll = {
        enable = true;
      };
    };
    opts = {
      number = true;
      relativenumber = true;
    };
  };
}
