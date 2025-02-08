{
  imports = [
    ./bookmarks/bookmarks.nix
  ];

  programs.schizofox = {
    enable = true;
 
#    theme = {
#      colors = {
#        background-darker = "181825";
#        background = "1e1e2e";
#        foreground = "cdd6f4";
#      };
#
#      font = "Lexend";
#
#      extraUserChrome = ''
#        body {
#          color: red !important;
#        }
#      '';
#    };
#
    search = {
      defaultSearchEngine = "onoki's SearXNG";
      removeEngines = ["Google" "Bing" "Amazon.com" "eBay" "Twitter" "Wikipedia"];
      searxUrl = "https://searx.be";
      searxQuery = "https://searx.be/search?q={searchTerms}&categories=general";
      addEngines = [
        {
          Name = "onoki's SearXNG";
          Description = "Checking balances";
          Alias = "!srxng";
          Method = "GET";
          URLTemplate = "https://search.ononoki.org/search?q={searchTerms}&category_general=&language=all&time_range=&safesearch=0&theme=simple";
        }
        {
          Name = "Perplexity";
          Description = "Perplexity";
          Alias = "!pe";
          Method = "GET";
          URLTemplate = "https://www.perplexity.ai/search?q={searchTerms}";
        }
        {
          Name = "NixOS Packages";
          Description = "NixOS Unstable package search";
          Alias = "!np";
          URLTemplate = "https://search.nixos.org/packages?channel=unstable&query={searchTerms}";
        }
        {
          Name = "Home Manager - Options";
          Description = "Search the option of a package in Home Manager";
          Alias = "!hm";
          URLTemplate = "https://home-manager-options.extranix.com/?query={searchTerms}&release=master";
        }
      ];
    };

    #security = {
    #  sanitizeOnShutdown = false;
    #};
    misc = {
      drm.enable= true;
      disableWebgl = false;
      startPageURL = "";
    };
#      contextMenu.enable = true;

    extensions = let
      mkUrl = name: "https://addons.mozilla.org/firefox/downloads/latest/${name}/latest.xpi";
    in 
    {
      darkreader.enable = true;
      enableDefaultExtensions = true;
      enableExtraExtensions = true;
    
      extraExtensions = {
        "uBlock0@raymondhill.net".install_url = mkUrl "ublock-origin";
        "{7a7a4a92-a2a0-41d1-9fd7-1e92480d612d}".install_url = mkUrl "stylus"; 
        "{aecec67f-0d10-4fa7-b7c7-609a2db280cf}".install_url = mkUrl "violentmonkey";
        "simple-translate@sienori".install_url = mkUrl "simple-translate";
        "7esoorv3@alefvanoon.anonaddy.me".install_url = mkUrl "libredirect";
        "{4a313247-8330-4a81-948e-b79936516f78}".install_url = mkUrl "image-search-options";
      };
    };

    };
}
