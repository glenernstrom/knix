{ config, pkgs, ... }:

 
{


    home.packages = with pkgs; [
      libreoffice-qt-fresh
      hunspell
      hunspellDicts.en_US
      hyphenDicts.en_US
      kdePackages.ghostwriter
      kdePackages.francis
      kdePackages.okular
      super-productivity
      karp
      joplin-desktop
      gst_all_1.gstreamer
      gst_all_1.gstreamermm
      gst_all_1.gst-vaapi
      gst_all_1.gst-libav
      gst_all_1.gst-plugins-bad
      gst_all_1.gst-plugins-good
      gst_all_1.gst-plugins-ugly
      gst_all_1.gst-rtsp-server
      kdePackages.merkuro
      onlyoffice-desktopeditors
      thunderbird
    ];

  }
