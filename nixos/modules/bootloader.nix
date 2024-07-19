{ inputs, config, pkgs, ... }:

{
  boot.loader.grub.enable = true;
  boot.loader.grub.device = "/dev/sda";
  boot.loader.grub.useOSProber = true;

  boot.initrd.luks.devices."luks-d4fb5306-1518-45fd-be66-e328ba4fe179".device = "/dev/disk/by-uuid/d4fb5306-1518-45fd-be66-e328ba4fe179";
  # Setup keyfile
  boot.initrd.secrets = {
    "/crypto_keyfile.bin" = null;
  };

  boot.loader.grub.enableCryptodisk=true;

  boot.initrd.luks.devices."luks-d89e2834-9978-4c02-85f6-c3802d726fd7".keyFile = "/crypto_keyfile.bin";
  boot.initrd.luks.devices."luks-d4fb5306-1518-45fd-be66-e328ba4fe179".keyFile = "/crypto_keyfile.bin";

}

