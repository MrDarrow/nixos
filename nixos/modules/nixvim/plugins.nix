{

  programs.nixvim.plugins = {
    lightline.enable = true;
    vim-css-color.enable = true;
    transparent.enable = true;
    transparent.settings = {
      exclude_groups = [ ];
      extra_groups = [
        "BufferLineTabClose"
        "BufferLineBufferSelected"
        "BufferLineFill"
        "BufferLineBackground"
        "BufferLineSeparator"
        "BufferLineIndicatorSelected"
      ];
    };
    nix.enable = true;
    markdown-preview.enable = true;
  };

}
