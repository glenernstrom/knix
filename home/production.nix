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

      # Declaratively installed as flatpak (until a nixpkg is available):
      # Swifty Notes
      # Reinschrift
      # GNOME Calendar (last tried GNOME calendar nixpkg in KDE wasn't wolrking)
      # Using Google Calendar for personal Calendar and Contacts
      # I tried Nextcloud homelab server, but I don't trust myself to maintain
      # critical data like this on second-hand hardware with my own infrastructue.
      # ProtonMail has calendar and contacts, but I don't like the interface and
      # I would rather use local open-source apps on the frontend.
      # Kontacts is rather ugly. It has the KDE "look and feel" but 
      # it doesn't "feel" pleasant to use." I may just end up using Thunderbird
      # for personal email and proton for extra private communications.
      # All work email, calendar, contacts is UVM's Outlook
      # Experimenting with Reinschift and super-productivity, but in general my
      # primary taskmanager is my paper binder.
      super-productivity
      thunderbird

      
     ]; 

  }
