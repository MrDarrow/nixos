{
  description = "My system configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    nixpkgs-stable.url = "github:nixos/nixpkgs/nixos-24.05";

  home-manager = {
      
   url = "github:nix-community/home-manager";
    inputs.nixpkgs.follows = "nixpkgs";
    };

    nixvim = {
      url = "github:nix-community/nixvim";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    schizofox.url = "github:schizofox/schizofox";

  };

  outputs = { self, nixpkgs, nixpkgs-stable, home-manager, ... }@inputs: 

    let

      system = "x86_64-linux";

    in {

      nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {

        specialArgs = {
          pkgs-stable = import nixpkgs-stable { 
            inherit system;
            config.allowUnfree = true;
          };
	inherit inputs system;
	};

      	modules = [ 

	./nixos/configuration.nix 
        inputs.nixvim.nixosModules.nixvim

	];

      };

    homeConfigurations.darrow = home-manager.lib.homeManagerConfiguration {
      pkgs = nixpkgs.legacyPackages.${system};
      modules = [ 
        ./home-manager/default.nix
        inputs.schizofox.homeManagerModule
      ];
    };
  };

}
