let
  br = "Boorus";
in
{
  programs.schizofox = {
    misc = {
      bookmarks = [
        {
          Title = "Danbooru: Anime Image Board";
          URL = "https://danbooru.donmai.us/";
          Folder = "${br}";
        }
        {
          Title = "ordfav:Myatouush";
          URL = "https://danbooru.donmai.us/posts?page=1&tags=ordfav%3AMyatouush";
          Folder = "${br}";
        }
      ];
    };
  };
}
