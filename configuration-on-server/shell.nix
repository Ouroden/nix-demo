{
  tinypkgs ? import (fetchTarball {
    url = "https://github.com/Ouroden/nix-packages/tarball/master";
    sha256 = "sha256:1pz2g8q6l5b8x4ixkbn0lvkwddpqhsanblkv4znq5wd9nzy3l60j";
  }) {}
}:

tinypkgs.pkgs.mkShell rec {
  buildInputs = [
    tinypkgs.chord
  ];
}
