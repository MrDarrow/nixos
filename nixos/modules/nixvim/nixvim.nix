{

  imports = [

  ./plugins.nix
  ./opts.nix

  ];

  programs.nixvim = {

    enable = true;

    defaultEditor = true;

  };

}
