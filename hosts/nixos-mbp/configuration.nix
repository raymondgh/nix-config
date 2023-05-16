# Config for nixos-mbp device

{ config, pkgs, ... }:

{
  networking.hostName = "nixos-mbp"; # Define your hostname.

  imports =
    [ # Common configuration
      ../../common-configuration.nix
      # Include the results of the hardware scan.
      ./hardware-configuration.nix
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

  # Enable touchpad support (enabled default in most desktopManager).
  services.xserver.libinput.enable = true;
}
