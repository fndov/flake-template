{ pkgs, ... }: {
  imports = [
    # Import any modules or take them out
    ../../modules/desktop/gnome.nix
    ../../modules/apps/software.nix
    ../../modules/commands/software.nix
    ../../modules/commands/shell.nix
  ];
  # One line to change the kernel, comment out to use LTS
  boot.kernelPackages = pkgs.linuxPackages_latest; # pkgs.linuxPackages_xanmod
  boot.kernelParams = [ ];
  boot.blacklistedKernelModules = [
    # In order to use the official NVIDIA drivers, blacklist nouveau
    # "nouveau"
  ];
}
