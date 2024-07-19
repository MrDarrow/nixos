{

  imports = [

  ./plugins/plugins-bundle.nix

  ];

  programs.nixvim = {

    enable = true;

    defaultEditor = true;

  };

}
