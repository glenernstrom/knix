 { config, pkgs, ... }:

  {  
    home.packages = with pkgs;
    # let
     # R-with-packages = rWrapper.override{
       # packages = with rPackages; [
          # ggplot2
	  # dplyr
	  # tidyverse
          # DescTools
          # lubridate
          # nycflights13
          # psych
          # car
      #  ];
    #  };

    # Rstudio-with-packages = rstudioWrapper.override{
      # packages = with rPackages; [
         # ggplot2
	 # dplyr
	 # tidyverse
         # DescTools
         # lubridate
         # nycflights13
         # psych
         # car
      #  ];
     # };

   # in
  
   [
    # R-with-packages
    # Rstudio-with-packages
      pymol
      nucleus
      coulomb
      texliveFull
      pandoc
      kile
    ]; 

  }
