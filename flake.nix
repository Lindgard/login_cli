{
  description = "Login CLI dev shell with .NET 10 and Spectre.Console";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs { inherit system; };
      in {
        devShells.default = pkgs.mkShell {
          buildInputs = [
            pkgs.dotnet-sdk_10  # if unavailable on your channel, switch to pkgs.dotnet-sdk_9
          ];
          shellHook = ''
            echo "Dev shell: .NET $(dotnet --version)"
          '';
        };
      });
}

