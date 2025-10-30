{
  services = {
    syncthing = {
      enable = true;
      group = "syncthing";
      user = "darrow";
      dataDir = "/home/darrow/syncthing";
      configDir = "/home/darrow/.config/syncthing";
    };
  };
}
