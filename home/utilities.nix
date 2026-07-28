  {config, pkgs, ... }:

  {

    home.packages = with pkgs; [
   #   kdePackages.kcalc
   #   kdePackages.kweather
   #   kdePackages.kweathercore
   #   kdePackages.kcharselect
   #   kdePackages.isoimagewriter
   #   kdePackages.skanpage
   #   kdePackages.yakuake
   #   kdePackages.kcolorpicker
      impression 
      tesseract5
      pay-respects
      tree
      ghostty
      gradia
      blanket
      deja-dup
      bitwarden-desktop
    ];
  }
