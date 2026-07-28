 {config, pkgs, ... }:

  {
    home.packages = with pkgs; [
      kdePackages.kdenlive
      obs-studio
      gnome-podcasts
      newsflash
      cozy
      foliate

 #     audacity
 #     vlc
#      haruna
#      media-downloader
#      kdePackages.kasts
#      kdePackages.akregator
#      kdePackages.arianna
      shortwave
    ];
  }
