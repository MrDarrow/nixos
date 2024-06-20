  { pkgs, config, ... }:
  {
  programs.lf = {
    enable = true;
    commands = {
    
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
	D = "delete";
	zip = "zip-files";
   };

    settings = {
      preview = true;
      icons = true;
      drawbox = true;
      ignorecase = true;
    };

    extraConfig = 
    let 
      previewer = 
        pkgs.writeShellScriptBin "pv.sh" ''
        file=$1
        w=$2
        h=$3
        x=$4
        y=$5
        
        if [[ "$( ${pkgs.file}/bin/file -Lb --mime-type "$file")" =~ ^image ]]; then
            ${pkgs.kitty}/bin/kitty +kitten icat --silent --stdin no --transfer-mode file --place "''${w}x''${h}@''${x}x''${y}" "$file" < /dev/null > /dev/tty
            exit 1
        fi
        
        ${pkgs.pistol}/bin/pistol "$file"
      '';
      cleaner = pkgs.writeShellScriptBin "clean.sh" ''
        ${pkgs.kitty}/bin/kitty +kitten icat --clear --stdin no --silent --transfer-mode file < /dev/null > /dev/tty
      '';
    in
    ''
      set cleaner ${cleaner}/bin/clean.sh
      set previewer ${previewer}/bin/pv.sh
    '';
  };
}
