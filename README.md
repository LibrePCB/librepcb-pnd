# LibrePCB Package for OpenPandora

This repository contains everything to create the LibrePCB PND which can then be uploaded to the
[OpenPandora Repo](https://repo.openpandora.org/?page=detail&app=librepcb).

## Build Binaries on the OpenPandora

### Requirements

Install [Code::Blocks Package](http://repo.openpandora.org/?page=detail&app=codeblocks6022).

### Build LibrePCB

1. Start -> Development -> Dev Command Line Interface
2. `cd /media/SD`
3. `wget https://download.librepcb.org/releases/1.0.0/librepcb-1.0.0-source.zip`
4. `unzip librepcb-1.0.0.zip`
5. Apply patches: `workaround-for-qt5-bug.patch` and `workaround-fix-linking-without-gl.patch`
6. `mkdir build && cd build`
7. `cmake .. -DUSE_OPENCASCADE=0 -DLIBREPCB_REPRODUCIBLE=1 -DBUILD_TESTS=0 -DUSE_GLU=0`
8. `make`


## Package creation

### Dependencies on Ubuntu

```
sudo apt install squashfs-tools
```

### Dependencies on Nixos

```
nix-shell -p squashfsTools
```

### Create the PND

1. Increment build number in `PXML.xml`
2. Ensure i18n files are up to date
3. Ensure share folder is up to date
4. `./make.sh`

