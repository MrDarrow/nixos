{ inputs, config, pkgs, ... }:

{
  boot.loader.grub.enable = true;
  boot.loader.grub.device = "/dev/sda";
  boot.loader.grub.useOSProber = true;

  boot.initrd.luks.devices."luks-69be38e6-8611-4111-b717-e18754c5f518".device = "/dev/disk/by-uuid/69be38e6-8611-4111-b717-e18754c5f518";

  # Setup keyfile
  boot.initrd.secrets = {
    "/crypto_keyfile.bin" = null;
  };

  boot.loader.grub.enableCryptodisk=true;

  boot.initrd.luks.devices."luks-69be38e6-8611-4111-b717-e18754c5f518".keyFile = "/crypto_keyfile.bin";

}
