 {config, pkgs, ... }:

  {
    home.packages = with pkgs; [
      kdePackages.kdenlive
      obs-studio
      audacity
      vlc
      haruna
      media-downloader
      kdePackages.kasts
      kdePackages.akregator
      kdePackages.arianna
      shortwave
    ];
  }
