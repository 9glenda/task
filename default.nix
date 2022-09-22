{ pkgs ? import <nixpkgs> {}, }:
let
  task = pkgs.writeShellScriptBin "task" ./task;
in
pkgs.stdenv.mkDerivation rec {
  name = "task"; 
  #src = fetchGit {
    #url = "https://github.com/9glenda/task";
  #};
  

  # Add the derivation to the PATH
  buildInputs = [ task ];
} 