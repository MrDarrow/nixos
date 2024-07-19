{

  imports = [

  ./plugins.nix

  ];

  programs.nixvim = {

    enable = true;

    defaultEditor = true;

  };

}
