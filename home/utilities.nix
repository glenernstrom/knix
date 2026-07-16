  {config, pkgs, ... }:

  {

    home.packages = with pkgs; [
      kdePackages.kcalc
      kdePackages.kweather
      kdePackages.kweathercore
      kdePackages.kcharselect
      kdePackages.isoimagewriter
      kdePackages.skanpage
      kdePackages.yakuake
      tesseract5
      pay-respects
      tree
      ghostty
    ];
  }
