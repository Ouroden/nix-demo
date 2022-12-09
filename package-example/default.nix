{
  pkgs ? import (fetchTarball {
    url = "https://github.com/NixOS/nixpkgs/archive/4fe8d07066f6ea82cda2b0c9ae7aee59b2d241b3.tar.gz";
    sha256 = "sha256:06jzngg5jm1f81sc4xfskvvgjy5bblz51xpl788mnps1wrkykfhp";
  }) {}
}:

with pkgs;

let
  packages = rec {

    # The derivation for chord
    chord = stdenv.mkDerivation rec {
      pname = "chord";
      version = "0.0.in-tuto";
      src = fetchgit {
        url = "https://gitlab.inria.fr/nix-tutorial/chord-tuto-nix-2022";
        rev = "069d2a5bfa4c4024063c25551d5201aeaf921cb3";
        sha256 = "sha256-MlqJOoMSRuYeG+jl8DFgcNnpEyeRgDCK2JlN9pOqBWA=";
      };

      buildInputs = [
        pkgconfig
        simgrid
        boost
        cmake
      ];

    };

    # The shell of our experiment runtime environment
    expEnv = mkShell rec {
      name = "exp01Env";
      buildInputs = [
        chord
      ];
    };

  };
in
  packages
