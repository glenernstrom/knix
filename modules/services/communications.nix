{ config, pkgs, ... }:

{
   services.murmur = {
      enable = true;
      openFirewall = true;
      welcometext = "Welcome to hermit thrush gaming!";
    };

}
