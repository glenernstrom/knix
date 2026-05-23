  { config, pkgs, ... }:

  {
    home.packages = with pkgs; [
      pcloud
      organicmaps
      tree
    ]; 

  }
