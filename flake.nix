{
  description = "My system configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    nixpkgs-stable.url = "github:nixos/nixpkgs/nixos-25.05";

  home-manager = {
      
   url = "github:nix-community/home-manager";
    inputs.nixpkgs.follows = "nixpkgs";
    };

    nixvim = {
      url = "github:nix-community/nixvim";
    };

    schizofox.url = "github:schizofox/schizofox";
    stylix = {
      url = "github:nix-community/stylix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    quickshell = {
      url = "github:outfoxxed/quickshell";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, nixpkgs-stable, home-manager, stylix, ... }@inputs: 

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

	];

      };

    homeConfigurations.darrow = home-manager.lib.homeManagerConfiguration {
      pkgs = nixpkgs.legacyPackages.${system};
      modules = [ 
        ./home-manager/default.nix
        inputs.schizofox.homeManagerModule
        inputs.nixvim.homeModules.nixvim
	stylix.homeModules.stylix
      ];
    };
  };

}
