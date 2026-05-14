 { config, pkgs, ... }:

  {  
    home.packages = with pkgs;
    let
      R-with-packages = rWrapper.override{
        packages = with rPackages; [
          ggplot2
	        dplyr
	        tidyverse
        ];};

      Rstudio-with-packages = rstudioWrapper.override{
        packages = with rPackages; [
          ggplot2
	        dplyr
	        tidyverse
        ];};

    in
    [
      R-with-packages
      Rstudio-with-packages
      pymol
      nucleus
      coulomb
     # kdePackages.kalzium
     # kdePackages.cantor
      kdePackages.kalk
      kile
      texliveFull
      pandoc
    ]; 

  }
