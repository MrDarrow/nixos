{ pkgs, config, inputs, ...}:

{

  environment.variables = {

    EDITOR = "nvim";

  };

  environment.sessionVariables = {

    WLR_NO_HARDWARE_CURSORS = "1";

    NIXOS_OZONE_WL = "1";

  };

  hardware = {

    opengl.enable = true;
 
 };

}
