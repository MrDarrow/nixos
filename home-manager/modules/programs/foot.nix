let
  a0 = "111a23";
  ab = "b4c7d8";
  a1 = "4B5569";
  a2 = "665968";
  a3 = "AD6469";
  a4 = "597496";
  a5 = "5E81AC";
  a6 = "698AAF";
  a7 = "b4c7d8";
  b0 = "7d8b97";
  b1 = "4B5569";
  b2 = "665968";
  b3 = "AD6469";
  b4 = "597496";
  b5 = "5E81AC";
  b6 = "698AAF";
  b7 = "b4c7d8";

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
