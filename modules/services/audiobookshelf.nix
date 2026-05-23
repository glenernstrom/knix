{ pkgs, ... }:

{
 environment.systemPackages = [
  pkgs.audiobookshelf
 ];
:
 services.audiobookshelf = {
  enable = false;
  port = 8000;
  host = 0.0.0.0;


}
