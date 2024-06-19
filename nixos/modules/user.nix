{ pkgs, inputs, config, ...}:

{

  programs.zsh.enable = true;

  users = {
    
    defaultUserShell = pkgs.zsh;

    users.darrow = {
      
      isNormalUser = true;
      description = "Darrow";
      extraGroups = [ "networkmanager" "wheel" ];
      packages = with pkgs; [];

    };

  };

}
