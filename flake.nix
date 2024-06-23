{
  description = "My system configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";

  home-manager = {
      
   url = "github:nix-community/home-manager";
    inputs.nixpkgs.follows = "nixpkgs";
    };


  };

  outputs = { self, nixpkgs, home-manager, ... }@inputs: 

    let

      system = "x86_64-linux";

    in {

      nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {

        specialArgs = {inherit inputs;};

        inherit system;

	modules = [ 

	./nixos/configuration.nix 

	];

      };

    homeConfigurations.darrow = home-manager.lib.homeManagerConfiguration {
      pkgs = nixpkgs.legacyPackages.${system};
      modules = [ ./home-manager/home.nix ];
    };
  };

}
