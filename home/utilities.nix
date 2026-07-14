  {config, pkgs, ... }:

  {

    prorgams.fish = {
      enable = true;
    };

    home.packages = with pkgs; [
      kdePackages.kcalc
      kdePackages.kcharselect
      kdePackages.isoimagewriter
      kdePackages.skanpage
      tesseract5
      pay-respects
      tree
      ghostty
    ];
  }
