let
  a0 = "080D14";
  ab = "614F3F";
  a1 = "303B43";
  a2 = "3B4547";
  a3 = "514E46";
  a4 = "6E614E";
  a5 = "877156";
  a6 = "bfb3ab";
  a7 = "857d77";
  b0 = "614F3F";
  b1 = "303B43";
  b2 = "3B4547";
  b3 = "514E46";
  b4 = "6E614E";
  b5 = "877156";
  b6 = "bfb3ab";
  b7 = "614F3F";

in
{
  programs.foot = {

    enable = true;

    settings = {
      main = {
        font = "JetBrains Mono:size=13";
	    pad = "0x0";
       };

      colors = {
	alpha = "0.9";

        background = "${a0}";
	foreground = "${ab}";

        regular0 = "${a0}";
	regular1 = "${a1}";
	regular2 = "${a2}";
	regular3 = "${a3}";
	regular4 = "${a4}";
	regular5 = "${a5}";
	regular6 = "${a6}";
	regular7 = "${a7}";

	bright0  = "${b0}";
	bright1  = "${b1}";
	bright2  = "${b2}";
	bright3  = "${b3}";
	bright4  = "${b4}";
	bright5  = "${b5}";
	bright6  = "${b6}";
	bright7  = "${b7}";
      }; 
      
      key-bindings = {
        show-urls-copy = "Control+Shift+y";
        scrollback-up-half-page = "Control+k";
        scrollback-down-half-page = "Control+j";
      };
    };
  };
}

