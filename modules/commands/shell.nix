{ pkgs, settings, ... }: {
  # Setup your shell
  users.users.${settings.account.name}.shell = pkgs.fish;
  programs.fish.enable = true;

  # Improved terminal history
  services.atuin.enable = true;
}
