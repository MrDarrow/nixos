  { pkgs, config, ... }:
  {
  programs.lf = {
    enable = true;
    commands = {
    
    dragon-out = ''%${pkgs.xdragon}/bin/xdragon -a -x \"$fx"\'';

    zip-files = ''
      ''${{
      printf "Enter zip archive name: "
      read name
      unset files
      echo "$fx" | while read -r l ; do { file="$(echo "$l" | rev | cut -d '/' -f 1 | rev)" ; zip -r "$name" "$file" ;} ; done
	clear
      }}'';

     mkdir = ''
      ''${{
        printf "Directory Name: "
        read DIR
        mkdir $DIR
      }}
      '';
   };

    keybindings = {
	a = "mkdir";
	g = "dragon-out";
	D = "delete";
	zip = "zip-files";
   };

    settings = {
      preview = true;
      icons = true;
      drawbox = true;
      ignorecase = true;
      previewer = "${pkgs.ctpv}/bin/ctpv";
    };
    extraConfig = 
    let 
      cleaner = pkgs.writeShellScriptBin "clean.sh" ''
        ${pkgs.kitty}/bin/kitty +kitten icat --clear --stdin no --silent --transfer-mode file < /dev/null > /dev/tty
      '';
    in
    ''
      set cleaner ${cleaner}/bin/clean.sh
    '';
  };
}
