{ config, pkgs, ... }:

{
  home-manager.backupFileExtension = "bak";

  home-manager.users.glen = {
  imports = [
    ./productivity.nix
    ./graphics.nix
    ./internet.nix
    ./multimedia.nix
    ./utilities.nix
    ./science.nix
    ./nvim/neovim.nix
    ./ghostty/ghostty.nix
    ./tui.nix
  ];

  home.stateVersion = "26.05";
  programs.home-manager.enable = true;

 };
}
