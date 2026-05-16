{ config, pkgs, ... }:

{
  networking.networkmanager.enable = true;

  networking.firewall = {
    enable = true;
    trustedInterfaces = [ "tailscale0" ];
  };

  environment.systemPackages = with pkgs; [
    dino
  ];

  services.tailscale.enable = true;
 # networking.firewall.allowedTCPPorts = [ 64738 ];
 # networking.firewall.allowedUDPPorts = [ 64738 ];
}
