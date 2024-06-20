{ config, ... }:

{

  programs.newsboat = {

    enable = true;

    autoReload = true;

    reloadThreads = 50;

    extraConfig = "
    
    \nbind-key j down
    \nbind-key k up    
    \nbind-key j next articlelist
    \nbind-key k prev articlelist
    \nbind-key J next-feed articlelist
    \nbind-key K prev-feed articlelist
    \nbind-key G end
    \nbind-key g home
    \nbind-key d pagedown
    \nbind-key u pageup
    \nbind-key l open
    \nbind-key h quit
    \nbind-key a toggle-article-read
    \nbind-key n next-unread
    \nbind-key N prev-unread
    \nbind-key D pb-download
    \nbind-key U show-urls
    \nbind-key x pb-delete

    ";

    browser = "librewolf";

    urls = [

      {url = "https://xcancel.com/notkimu/rss";}
      {url = "https://xcancel.com/TechnoBrake1/rss";}
      {url = "https://xcancel.com/mogudan555/rss";}
      {url = "https://xcancel.com/nega0com3d2/rss";}

    ];

  };

}
