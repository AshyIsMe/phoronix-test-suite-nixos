# Run phoronix-test-suite on nixos

## Usage

```bash
git clone https://github.com/phoronix-test-suite/phoronix-test-suite

git clone https://github.com/ashyisme/phoronix-test-suite-nixos

cp phoronix-test-suite-nixos/default.nix phoronix-test-suite

cd phoronix-test-suite

nix-shell  # load a shell from default.nix

./phoronix-test-suite benchmark build-linux-kernel
```
