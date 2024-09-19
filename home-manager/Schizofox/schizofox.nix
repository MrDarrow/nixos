{
  programs.schizofox = {
  enable = true;
 
#  theme = {
#    colors = {
#      background-darker = "181825";
#      background = "1e1e2e";
#      foreground = "cdd6f4";
#    };
#
#    font = "Lexend";
#
#    extraUserChrome = ''
#      body {
#        color: red !important;
#      }
#    '';
#  };
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

  security = {
    sanitizeOnShutdown = false;
    sandbox = true;
    userAgent = "Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:106.0) Gecko/20100101 Firefox/106.0";
  };
#
  misc = {
#    drmFix = true;
#    disableWebgl = false;
    startPageURL = "https://xvideos.com/";
    bookmarks = [
      {
        Title = "Nude";
       URL = "https://github.com/justchokingaround/nude";
       Folder = "Github";
      }
    ];
  };
#    contextMenu.enable = true;

#  extensions = {
#    simplefox.enable = true;
#    darkreader.enable = true;
#
#    extraExtensions = {
#      "webextension@metamask.io".install_url = "https://addons.mozilla.org/firefox/downloads/latest/ether-metamask/latest.xpi";
#    };
#  };
#
  };
}
