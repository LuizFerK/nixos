```
sudo su
git clone https://github.com/LuizFerK/nixos /tmp/nixos
nix --experimental-features "nix-command flakes" run github:nix-community/disko -- --mode disko /tmp/nixos/disko.nix --arg device '"/dev/nvme0n1"'
mkdir /mnt/etc
cp -r /tmp/nixos /mnt/etc/nixos
cp -r /tmp/nixos /mnt/persist/nixos
nixos-install --root /mnt --flake /mnt/etc/nixos#default
```