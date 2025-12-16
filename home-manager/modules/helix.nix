{pkgs, ...}:
{
 programs.helix = {
   enable = true;
   defaultEditor = true;
   settings = {
    editor.soft-wrap = {
      enable = true;
    }; 
    editor.cursor-shape = {
      insert = "bar";
      normal = "block";
      select = "underline";
    };
  };
   languages = {
     language-server.uwu_colors = {
       command = "${pkgs.uwu-colors}/bin/uwu_colors";
     };
     language-server.marksman = {
       command = "${pkgs.marksman}/bin/marksman";
     };
       language = [
      {
        name = "nix";
        language-servers = [ "uwu_colors" ];
      }
      {
        name = "markdown";
        language-servers = [ "marksman" "uwu_colors" ];
      }
      {
        name = "html";
        language-servers = [ "uwu_colors" ];
      }
      {
        name = "kdl";
        language-servers = [ "uwu_colors" ];
      }
    ];
   };
 };
}
