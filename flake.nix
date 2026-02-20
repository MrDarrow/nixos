{
  description = "My system configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    nixpkgs-stable.url = "github:nixos/nixpkgs/nixos-25.11";

    home-manager = {
      
    url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
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

    noctalia = {
      url = "github:noctalia-dev/noctalia-shell";
      inputs.nixpkgs.follows = "nixpkgs";
      inputs.quickshell.follows = "quickshell";  # Use same quickshell version
    };

    zen-browser = {
      url = "github:0xc000022070/zen-browser-flake";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, home-manager, stylix, nixpkgs-stable, ... }@inputs: 

    let

      system = "x86_64-linux";
      
      pkgsStable = import nixpkgs-stable {
        inherit system;
        config.allowUnfree = true; # Optional: allow unfree packages
      };

    in {

      nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {

        specialArgs = {
      	  inherit inputs system;
      	  inherit pkgsStable;
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
       	  stylix.homeModules.stylix
       	  inputs.noctalia.homeModules.default
        ];
      };
  };
}
