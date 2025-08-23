### This is a beginner's guide to setting up a NixOS system using flakes.

#### Why this flake?

* I'm offering the best structure from real world experience.

When you checkout someone else's flake or want to modify your own, it should make sense where things are.

This flake assumes your already have NixOS installed and are ready to transition to flakes.

Benefits of using flakes include:
- Version locking
- Mix stable & unstable with ease
- Compatable with third party modules
- True reproducability

2 desktops & 2 profiles are provided to begin with.

Structure
```
┌─ modules
│  ├─ apps
│  ├─ commands
│  └─ desktop
└─ profile
    ├─ home
    └─ workstation
```
Import flow
```
┌─ flake.nix                (Start)
├─ compose.nix              (Common code)
├─ profile/
│  └─ home/          
│     ├─ configuration.nix  (Select your modules)
│     └─ hardware.nix
└─ modules/
   ├─ apps/
   │  └─ software.nix       (Package list)
   ├─ commands/
   │  ├─ software.nix       (Package list)
   │  └─ shell.nix
   └─ desktop/
      └─ gnome.nix          (Your desktop)

```

#### Setup
```
git clone https://github.com/fndov/Simple-Flake ~/.flake

cp /etc/nixos/hardware-configuration.nix ~/.flake/profile/home/hardware.nix
cp /etc/nixos/hardware-configuration.nix ~/.flake/profile/workstation/hardware.nix
```
Specify your drive type (scroll to the bottom)
```
nano ~/.flake/compose.nix
```
Set your username.
```
nano ~/.flake/flake.nix
```
Rebuild & reboot to be safe, or just switch.
```
sudo nixos-rebuild boot --flake ~/.flake#home
```
The password is set in `compose.nix`, by default it's: 'password'.

---
#### Important links:

[How to setup NVIDIA](https://nixos.wiki/wiki/Nvidia)

[NixOS packages](https://search.nixos.org/packages)

[NixOS options](https://search.nixos.org/options)

[Home manager options](https://home-manager-options.extranix.com/)
