{
  description = "horizons";

  inputs = {
    atom.url = "github:LiGoldragon/atom";
    src.url = "./src";
    src.flake = false;
  };

  outputs = inputs: inputs.atom.mkAtomicFlake inputs (./. + "/horizons@.toml");
}
