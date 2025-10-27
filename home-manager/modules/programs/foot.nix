let
  a0 = "161c23";
  ab = "4e453f";
  a1 = "836451";
  a2 = "a69c91";
  a3 = "b5aa9b";
  a4 = "c1b59d";
  a5 = "c3b7a0";
  a6 = "c6b7a2";
  a7 = "85919e";
  b0 = "87929d";
  b1 = "6f9b9a";
  b2 = "6c9694";
  b3 = "929694";
  b4 = "8a8d8d";
  b5 = "9f8e7b";
  b6 = "88969e";

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
	bright7  = "${a2}";
      }; 
      
      key-bindings = {
        show-urls-copy = "Control+Shift+y";
        scrollback-up-half-page = "Control+k";
        scrollback-down-half-page = "Control+j";
      };
    };
  };
}


















