{ config, pkgs, lib, ... }:
{
    services.caddy = {
        enable = true;
        virtualHosts = {
            # This will be the location where we will access Nextcloud
            "catharus.tail1e9c7b.ts.net:443" = {
                # We reverse proxy this to our port 11000 using http
                extraConfig = ''
                    reverse_proxy localhost:11000
                '';
            };
            # This will be the location where we will access Nextcloud's installation and admin panel
            "catharus.tail1e9c7b.ts.net:444" = {
                # We reverse proxy this to our port 8080. The Nextcloud container will try to use some self-signed certificate, but we can safely ignore it
                extraConfig = ''
                    reverse_proxy https://localhost:8080 {
                        transport http {
                            tls_insecure_skip_verify
                        }
                    }
                '';
            };
        };
    };
}
