{ config, pkgs, ... }:

{
  home-manager.backupFileExtension = "bak";

  home-manager.users.glen = {
  imports = [
    ./production.nix
    ./graphics.nix
    ./internet.nix
    ./media.nix
    ./utilities.nix
    ./nvim/neovim.nix
    ./ghostty/ghostty.nix
    ./games.nix
  ];

  home.stateVersion = "26.05";
  programs.home-manager.enable = true;

 };
}
