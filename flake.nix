{
  description = "horizons";

  inputs = {
    atom.url = "github:LiGoldragon/atom/atomicFlake-v1";
    system.url = "github:criome/system";
    rust-atom.url = "github:criome/rust-atom";

    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    nixpkgs-atom.url = "github:criome/nixpkgs-atom";
    nixpkgs-atom.inputs.nixpkgs.follows = "nixpkgs";

    horizons-rs.url = "github:criome/horizons-rs";
    horizons-rs.flake = false;
  };

  outputs = inputs: inputs.atom.mkAtomicFlake inputs (./. + "/horizons@.toml");
}
