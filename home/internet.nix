 { config, pkgs, ... }:

  {
    home.packages =  [
      (pkgs.mumble.override { pulseSupport = true; })
      pkgs.element-desktop
      pkgs.slack
      pkgs.zoom-us
      pkgs.discord
    ]; 

  } 
