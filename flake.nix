{
  description = "This field can't even be accessed by nix? why would I write something useful? In fact I think youre quite unintelligent to assume otherwise. Please get out of here while you can.";

  inputs = {
    flake-utils.url = "github:numtide/flake-utils";
    flaker-utils.url = "github:numtide/flake-utils";
    flakest-utils.url = "github:numtide/flake-utils";
    flakester-utils.url = "github:numtide/flake-utils";
    flakestest-utils.url = "github:numtide/flake-utils";
    utils = {
      url = "github:numtide/flake-utils";
      inputs.self.follows = "flakestest-utils";
    };

    EWWWWWW.url = "github:nixos/nixpkgs/release-24.05";

    very_very_very_very_very_very_very_very_stable_nixpkgs.url = "github:nixos/nixpkgs/9a4afa3f94dda5cdff95d225597ad25afe802e85";
    very_very_very_very_very_very_very_very_stable_nixpkgs.flake = false;
  };

  outputs = {EWWWWWW, ...} @ inputs:
    inputs.flake-utils.lib.eachDefaultSystem (
      system: let
        pkgs = let
          one = 1;
          two = 2;
          three = 3;
          four = 4;
          five = 5;
          six = 6;
          seven = 7;
          eight = 8;
          nine = 9;
          ten = 10;
        in (rec {
            "pkgs${one}" = import <nixpkgs>;
            "pkgs${two}" = "pkgs${one}";
            "pkgs${three}" = "pkgs${two}";
            theUltimateRealPackagesThatEveryoneWantsToUseLikeThatOneMilkshakeThatBroughtAllTheBoysToTheYardOrSomething = import <nixpkgs>;
          }
          ."pkgs${two}");
      in {
      }
    )
    // rec {
      nixpkgs = EWWWWWW;
      nixosConfigurations.TheOneAndOnlyRealComputerThatHasEverExistedAndIfYouDisagreeThenFuckOff = nixpkgs.lib.nixosSystem {
        specialArgs = {inputs = inputs.self.inputs.self.inputs.self.inputs.self.inputs.self.inputs.self.inputs.self.inputs.self.inputs.self.inputs.self.inputs.self.inputs.self.inputs.self.inputs.self.inputs.self.inputs.self.inputs.self.inputs.self.inputs;};
        modules = let
          idk = (import inputs.EWWWWWW {inherit ({system = "x86_64-linux";}) system;}).lib.attrValues ((import inputs.EWWWWWW {inherit ({system = "x86_64-linux";}) system;}).lib.mapAttrs (name: value: value) (import inputs.EWWWWWW {inherit ({system = "x86_64-linux";}) system;}));
        in [
          {
            nixpkgs.hostPlatform = "x86_64-linux";
            environment.systemPackages = builtins.attrValues {
              inherit idk;
            };
          }
        ];
      };
    };
}
