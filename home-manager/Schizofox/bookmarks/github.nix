let
  gh = "Github";
in
{
  programs.schizofox = {

    misc = {
      bookmarks = [
        {
         Title = "nude: my nixOS configuration";
         URL = "https://github.com/justchokingaround/nude";
         Folder = "${gh}";
        }
        {
          Title = "Schizofox";
          URL = "https://github.com/schizofox/schizofox";
          Folder = "${gh}";
        }
        {
          Title = "awesome-lists/awesome-bash: A curated list of delightful Bash scripts and resources";
          URL = "https://github.com/awesome-lists/awesome-bash";
          Folder = "${gh}"
        }
        {
          Title = "polywins: A featureful and customizable taskbar for polybar";
          URL = "https://github.com/uniquepointer/polywins";
          Folder = "${gh}"
        }
        {
          Title = "tam-carre-dotfiles: Linux configuration files";
          URL = "https://github.com/samwhelp/tam-carre-dotfiles";
          Folder = "${gh}";
        }
        {
          Title = "Aliucord: A modification for the Discord Android App";
          URL = "https://github.com/Aliucord/Aliucord";
          Folder = "${gh}";
        }
        {
          Title = "Win98SE: SE98 icon theme for GNU/Linux based on Windows 98 SE style and grassmunk/Chicago95 theme";
          URL = "https://github.com/nestoris/Win98SE";
          Folder = "${gh}";
        }
      ];
    };
  };
}
