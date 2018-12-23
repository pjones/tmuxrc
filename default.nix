{ pkgs ? import <nixpkgs> { }
}:

pkgs.stdenvNoCC.mkDerivation {
  name = "tmuxrc";
  meta.description = "Peter's tmux configuration.";
  src = ./.;

  phases =
   [ "unpackPhase"
     "installPhase"
   ];

  installPhase = ''
    mkdir -p $out
    cp -r --preserve=mode bin config $out/
  '';
}
