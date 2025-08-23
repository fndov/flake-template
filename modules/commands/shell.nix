{ pkgs, settings, ... }: {
  # Set your shell
  users.users.${settings.account.name}.shell = pkgs.zsh;
  programs.zsh.enable = true;

  # Improved terminal history
  services.atuin.enable = true;
}
