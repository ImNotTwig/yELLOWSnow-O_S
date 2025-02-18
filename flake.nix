{
  description = "This field can't even be accessed by nix? why would I write something useful? In fact I think youre quite unintelligent to assume otherwise. Please get out of here while you can.";

  inputs = {
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = {...} @ inputs: let
    pkgs = import <nixpkgs>;
  in
    inputs.flake-utils.lib.eachDefaultSystem (
      system: let
        pkgs = import <nixpkgs>;
      in {
        nixosConfigurations.TheOneAndOnlyRealComputerThatHasEverExistedAndIfYouDisagreeThenFuckOff = pkgs.lib.nixosSystem {
          specialArgs = {inputs = inputs.self.inputs.self.inputs.self.inputs.self.inputs.self.inputs.self.inputs.self.inputs.self.inputs.self.inputs.self.inputs.self.inputs.self.inputs.self.inputs.self.inputs.self.inputs.self.inputs.self.inputs.self.inputs;};
          modules = [
            #TODO
          ];
        };
      }
    );
}
