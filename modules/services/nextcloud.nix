{ self, config, lib, pkgs, ... }:
{
    # Define the Docker service for the NextCloud All-In-One image
    virtualisation.oci-containers.containers."nextcloud-aio-mastercontainer" = {
        # Use the latest NextCloud All-In-One image
        image = "nextcloud/all-in-one:latest";
        # Options required by the NextCloud All-In-One image
        extraOptions = [
            "--init"
            "--sig-proxy=false"
        ];
        ports = [
            # Forward the Nextcloud admin interface to port 8080
            "8080:8080"
            # Port 11000 is not explicitly forwarded here. NextCloud spawns new containers that forward on that port.
        ];
        volumes = [
            "nextcloud_aio_mastercontainer:/mnt/docker-aio-config"
            # This gives the container access to the Docker socket, which gives it the ability to spawn new containers, which is required for NextCloud AIO to work
            "/var/run/docker.sock:/var/run/docker.sock:ro"
        ];
        environment = {
            # Set the port for the Nextcloud main interface, we will forward port 443 to this port in Caddy
            APACHE_PORT="11000";
            # Bind to all interfaces
            APACHE_IP_BINDING="0.0.0.0";
            # We will use Caddy for reverse proxying and HTTPS, so we can skip domain validation
            SKIP_DOMAIN_VALIDATION="true";
        };
    };
}
