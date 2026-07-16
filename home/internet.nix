 { config, pkgs, ... }:

  {
    home.packages =  with pkgs; [
      mumble
      element-desktop
      slack
      zoom-us
      discord
      teams-for-linux
      protonmail-bridge
    ]; 

  } 
