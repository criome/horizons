{
  description = "horizons";

  inputs = {
    atom.url = "github:LiGoldragon/atom";
    horizons-rs.url = "github:criome/horizons-rs";
    horizons-rs.flake = false;
  };

  outputs = inputs: inputs.atom.mkAtomicFlake inputs (./. + "/horizons@.toml");
}
