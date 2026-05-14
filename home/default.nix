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
  ];

  home.stateVersion = "25.11";
  programs.home-manager.enable = true;

 };
}
