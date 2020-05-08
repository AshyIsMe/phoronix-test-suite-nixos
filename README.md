# Run phoronix-test-suite on nixos

## Setup

```bash
git clone https://github.com/ashyisme/phoronix-test-suite-nixos
cd phoronix-test-suite-nixos

git clone https://github.com/phoronix-test-suite/phoronix-test-suite


nix-shell build-linux-kernel.nix

cd phoronix-test-suite
./phoronix-test-suite benchmark build-linux-kernel
```


## Usage


build-linux-kernel

```bash

nix-shell build-linux-kernel.nix

./phoronix-test-suite/phoronix-test-suite benchmark build-linux-kernel

```


blender

```bash

nix-shell blender.nix

./phoronix-test-suite/phoronix-test-suite benchmark blender

```
