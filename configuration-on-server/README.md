# Second experiment

This is the second experiment presented in this [Nix tutorial](https://mpoquet.gitlabpages.inria.fr/nix-tutorial/).
It justs simulates a [Chord DHT algorithm](https://en.wikipedia.org/wiki/Chord_(peer-to-peer)) with [SimGrid](https://simgrid.org/).
The difference with the previous experiment is that it does not relies on an external package repository.

The experiment can be run with the following command.

```bash
nix-shell shell.nix --command ./runner.sh
```

Or alternatively with the following command.
```bash
./runner_shebang.sh
```

Enter shell
nix-shell shell.nix
