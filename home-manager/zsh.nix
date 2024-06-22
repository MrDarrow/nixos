{ config, ... }: {
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    # enableAutosuggestions = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    shellAliases =
      let
        flakeDir = "~/nixos";
      in {
    rb = "sudo nixos-rebuild switch --flake ${flakeDir}";
    ugd = "nix flake update ${flakeDir}";
    upg = "sudo nixos-rebuild switch --upgrade --flake ${flakeDir}";

    hms = "home-manager switch --flake ${flakeDir}";

    conf = "nvim ${flakeDir}/nixos/configuration.nix";
    pkgs = "nvim ${flakeDir}/nixos/packages.nix";

    ll = "ls -l";
    lobster = "sh ~/.local/bin/lobster/lobster.sh -l spanish -i";
    jerry = "sh ~/.local/bin/jerry/jerry.sh -l spanish -i";
    gallery = ''gallery-dl -f "/O" -d ~/Pictures'';
    rjscrap = "sh ~/.local/bin/scrapper.sh";
    };

    history.size = 10000;
    history.path = "${config.xdg.dataHome}/zsh/history";

    oh-my-zsh = {
      enable = true;
      plugins = [ "git" "sudo" ];
      theme = "agnoster"; # blinks is also really nice
    };
  };
}
