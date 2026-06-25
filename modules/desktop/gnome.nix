{ pkgs, ... }:

{

  # Display server + GNOME

  services.desktopManager.gnome.enable = true;
  services.displayManager.gdm.enable = true;

}
