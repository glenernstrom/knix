 { config, pkgs, ... }:

  {
    home.packages =  with pkgs; [
      mumble
      element-desktop
      slack
      zoom-us
      discord
 #     teams #this will not evaluate
      teams-for-linux
    ]; 

  } 
