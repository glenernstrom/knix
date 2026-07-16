{ config, pkgs, ... }:

  {
    home.packages = with pkgs;
      let
        R-with-packages = rWrapper.override { 
          packages = with rPackages; [
            tidyverse
            DescTools
            lubridate
            nycflights13
            psych
            car
          ];
        };
      in

    [
      # Stats
      R-with-packages

      # Graphics
      inkscape
      gimp
      scribus
      krita
      xournalpp
      rnote

      # Science Apps
      pymol
      nucleus
      coulomb

      # Typesetting
      texliveFull
      pandoc
      kile

      # PDF management
      karp

      # Office
      libreoffice-qt-fresh
      hunspell
      hunspellDicts.en_US
      hyphenDicts.en_US

      # Multimedia framework
      gst_all_1.gstreamer
      gst_all_1.gstreamermm
      gst_all_1.gst-libav
      gst_all_1.gst-plugins-bad
      gst_all_1.gst-plugins-good
      gst_all_1.gst-plugins-ugly
      gst_all_1.gst-rtsp-server

      # Development
      thonny
      marksman

      # Markdown
      kdePackages.ghostwriter

      # Database
      sqlite

      # Cloud
      dropbox

      # Notes
      joplin-desktop

      # Management
      super-productivity
      thunderbird
     ]; 

  }
