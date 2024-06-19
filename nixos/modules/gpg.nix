{ pkgs, inputs, config, ...}:

{

  services.pcscd.enable = true;
  programs.gnupg.agent.pinentryPackage = {
    
    enable = true;
    enableSSHSupport = true;
  };

}
