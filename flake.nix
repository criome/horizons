{
  description = "horizons";

  inputs = {
    atom.url = "github:LiGoldragon/atom";
  };

  outputs = inputs: inputs.atom.mkAtomicFlake inputs (./. + "/horizons@.toml");
}
