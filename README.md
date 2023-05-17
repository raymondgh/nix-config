# nix-config
My nixos configuration!

This repo follows along with [my blog](https://dev.to/raymondgh/series/22931) detailing my adventure with Nix and NixOS. My plan is to create github tags/releases that accompany each blog post so that others can follow along easily. 

Topics covered so far:

1. Installing NixOS on Macbook Pro
2. Basic introduction to configuration.nix
3. Getting Macbook Pro unique hardware to work (T2, APFS, Intel)
4. Syncing config across two machines with git version control

Here's the layout of the repo:

```
/home/ray/nix-config/
├── README.md
├── common-configuration.nix
└── hosts
    ├── nixos-mbp
    │   ├── configuration.nix
    │   ├── hardware-configuration.nix
    │   └── firmware
    └── nixos-desktop
        ├── configuration.nix
        └── hardware-configuration.nix
```
