 {config, pkgs, ... }:

  {
    home.packages = with pkgs; [
      kdePackages.kdenlive
      obs-studio
      audacity
     # mpv
      vlc
      parabolic
     # calibre
     # audiobookshelf
    ];
  }
