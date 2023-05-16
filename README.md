# nix-config
My nixos configuration

This is my hello-world configuration for dual-booting NixOS on my MacbookPro15,1 (MacBook Pro 15-inch, 2019) that accompanies [my NixOS setup guide](https://dev.to/raymondgh/day-4-reinstalling-nixos-on-my-apfs-t2-intel-macbook-pro-265n). If you have an Intel T2 Mac, I hope this helps you out!

Here is the intended layout:

```
/etc/nixos/
├── configuration.nix
├── common.nix
├── hosts
│   ├── nixos-mbp
│   │   ├── host-configuration.nix
│   │   └── hardware-configuration.nix
│   └── nixos-desktop
│       ├── host-configuration.nix
│       └── hardware-configuration.nix
```
