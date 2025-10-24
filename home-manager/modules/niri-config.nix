{ pkgs, inputs, lib, ...}: {
  programs.niri = {
    enable = true;
    
    settings = {
      
      xwayland-satellite = {
        enable = true;
	path = "${lib.getExe pkgs.xwayland-satellite}";
      };
    
    };
  };

}
