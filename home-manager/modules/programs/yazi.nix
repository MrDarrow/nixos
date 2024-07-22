{ pkgs, config, ... }:
{

  programs.yazi = {

    enable = true;
    manager.keymap = [
      {
        exec = "shell  ''%${pkgs.xdragon}/bin/xdragon -a -x "$fx"'' --confirm";
        on = ["<C-d>"];
      }
    ];
  };

}
