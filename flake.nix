 {
   description = "Glen's NixOS multimachine config";

   inputs = {
     nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

   outputs = { self, nixpkgs, home-manager, ... }:
     let
       commonNixpkgs = {
         nixpkgs.config.allowUnfree = true;
         # nixpkgs.overlays = [ (final: prev: /* overlay goes here */ ) ];
       };
       system = "x86_64-linux";

      
      commonHM = {
        home-manager.useGlobalPkgs = true;
        home-manager.useUserPackages = true;
      };
    in {
    nixosConfigurations = {
      lutra = nixpkgs.lib.nixosSystem {
        inherit system;
        modules = [
          commonNixpkgs 
          ./hosts/lutra
          ./roles/desktop.nix
          ./modules/core
          ./modules/services
          ./modules/desktop
          home-manager.nixosModules.home-manager
          commonHM
          ./home
        ];
      };

      puma = nixpkgs.lib.nixosSystem {
         inherit system;
         modules = [
           commonNixpkgs 
           ./hosts/puma
           ./roles/desktop.nix
           ./modules/core
           ./modules/services
           ./modules/desktop
           home-manager.nixosModules.home-manager
           commonHM
          ./home
         ];
       };
      catharus = nixpkgs.lib.nixosSystem {
         inherit system;
         modules = [
           commonNixpkgs 
           ./hosts/catharus
           ./roles/desktop.nix
           ./modules/core
           ./modules/services
           ./modules/desktop
           home-manager.nixosModules.home-manager
           commonHM
          ./home
         ];
       };
     };
   };
 }
