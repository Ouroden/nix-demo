# First experiment

This is the first experiment presented in this [Nix tutorial](https://nix-tutorial.gitlabpages.inria.fr/nix-tutorial/).
It justs simulates a [Chord DHT algorithm](https://en.wikipedia.org/wiki/Chord_(peer-to-peer)) with [SimGrid](https://simgrid.org/).

The experiment can be run with the following command.

```bash
nix-shell default.nix -A expEnv --command ./runner.sh
```

Or alternatively with the following command.
```bash
./runner_shebang.sh
```

Enter shell
nix-shell default.nix -A expEnv

