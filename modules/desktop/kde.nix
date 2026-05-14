{ config, pkgs, ...}:

{
# Recommnended for Plasma and Java
environment.sessionVariables = {
  _JAVA_OPTIONS = "-Dawt.useSystemAAFontSettings=on";
};


# Enable the KDE Plasma Desktop Environment.
services.displayManager.plasma-login-manager.enable = true;
services.desktopManager.plasma6.enable = true;

# Enable the X11 windowing system.
services.xserver.enable = true;

# Configure keymap in X11
  services.xserver.xkb = {
    layout = "us";
    variant = "";
  }; 

}
