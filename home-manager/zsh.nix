{ config, pkgs, ...}:

{
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

  shellAliases = {
    ll = "ls -l";
    lobster = "sh ~/.local/bin/lobster/lobster.sh -l spanish -i";
    jerry = "sh ~/.local/bin/jerry/jerry.sh -l spanish -i";
    gallery = ''gallery-dl -f "/O" -d ~/Pictures'';
    rjscrap = "sh ~/.local/bin/scrapper.sh";
    update = "sudo nixos-rebuild switch";
  };
  history = {
    size = 10000;
    path = "${config.xdg.dataHome}/zsh/history";
  };

};

}
