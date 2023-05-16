# Configuration unique to my nixos-mbp device that isn't covered in hardware-configuration.nix

{ config, lib, pkgs, modulesPath, ... }:

{
  imports = [
    # Firmware for keyboard, trackpad, etc
    "${builtins.fetchGit { url = "https://github.com/kekrby/nixos-hardware.git"; }}/apple/t2"
  ];
  
  # Firmware for Broadcom Wi-Fi and Bluetooth
  hardware.firmware = [
    (pkgs.stdenvNoCC.mkDerivation {
      name = "brcm-firmware";

      buildCommand = ''
        dir="$out/lib/firmware"
        mkdir -p "$dir"
        cp -r ${./firmware}/* "$dir"
      '';
    })
  ];
}
  