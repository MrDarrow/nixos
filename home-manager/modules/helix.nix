{pkgs, ...}:
{
 programs.helix = {
   enable = true;
   defaultEditor = true;
   settings = {
    editor.soft-wrap = {
      enable = true;
    }; 
  };
   languages = {
     language-server.uwu_colors = {
       command = "${pkgs.uwu-colors}/bin/uwu_colors";
     };
       language = [
      {
        name = "nix";
        language-servers = [ "uwu_colors" ];
      }
    ];
   };
 };
}
