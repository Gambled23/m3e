with import <nixpkgs> { };

let
  pythonPackages = python3Packages;
in pkgs.mkShell rec {
  name = "nodejs";

  buildInputs = [
    nodejs_24
  ];
}
