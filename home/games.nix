{ config, pkgs , ... }:

{
   programs.steam = {
     enable = true;
     remotePlay.openFirewall = true;
     dedicatedServer.openFirewall = true;
   };

 home.packages = with pkgs; [
  kdePackages.kpat
  kdePackages.bomber
  kdePackages.kapman
  kdePackages.ksudoku
 ];

}
