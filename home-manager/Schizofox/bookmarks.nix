{
  imports = [
    ./bookmarks.nix
  ];

  programs.schizofox = {

    misc = {
      bookmarks = [
        {
         Title = "Nude | github";
         URL = "https://github.com/justchokingaround/nude";
         Folder = "Github";
        }
        {
          Title = "Schizofox | github";
          URL = "https://github.com/schizofox/schizofox";
          Folder = "Github";
      ];
    };
  };
}
