{ pkgs,  ... }:

{
  services.flatpak.enable = true;

  virtualisation.podman = {
    enable = true;
    dockerCompat = true;

  virtualisation.docker.enable = true;
  virtualisation.oci-containers.backend = "docker";

  virtualisation.containers.enable = true;
  virtualisation.podman = {
    enable = true;
   # dockerCompat = true;

    defaultNetwork.settings.dns_enabled = true;
  };

  environment.systemPackages = with pkgs; [
    distrobox
  ];

}
