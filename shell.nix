{ 
  pkgs ? import <nixpkgs> {}, 
}:
let 
  start = pkgs.writeShellScriptBin "start" "npx vite";
in 
pkgs.mkShell {
  name = "m3e-dev-shell";

  packages = with pkgs; [
    nodejs_24
    start
  ];

  shellHook = ''
    if [ ! -d node_modules ]; then
      npm update
      npm install
    fi
  '';
}