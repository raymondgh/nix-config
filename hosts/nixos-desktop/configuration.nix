# Config for nixos-mbp device

{ config, pkgs, ... }:

let
  commonPackages = import ../../common-packages.nix { inherit pkgs; };

in 
{
  networking.hostName = "nixos-desktop"; # Define your hostname.

  imports =
    [ # Common configuration
      ../../common-configuration.nix
      # Include the results of the hardware scan.
      ./hardware-configuration.nix
    ];

  # Enable sound.
  sound.enable = true;
  hardware.pulseaudio.enable = true;

  environment.systemPackages = with pkgs; [
    spotify
  ] ++ commonPackages;

}
