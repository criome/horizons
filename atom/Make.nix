datom:
let
  inherit (mod.packages) horizons-rs;
  inherit (get.nixpkgs-atom) pkgs;
in
derivation {
  name = "horizons";
  inherit system;
  __structuredAttrs = true;
}
