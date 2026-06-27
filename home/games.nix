{ config, pkgs , ... }:

{
 home.packages = with pkgs; [
  kdePackages.kpat
  kdePackages.bomber
  kdePackages.kapman
  kdePackages.ksudoku
 ];

}
