# LibrePCB Package for OpenPandora

This repository contains everything to create the LibrePCB PND which can then be uploaded to the
[OpenPandora Repo](https://repo.openpandora.org/?page=detail&app=librepcb).

## Build Binaries on the OpenPandora

### Requirements

Install [Code::Blocks Package](http://repo.openpandora.org/?page=detail&app=codeblocks6022).

### Build LibrePCB

1. Start -> Development -> Dev Command Line Interface
2. `cd /media/SD && wget https://download.librepcb.org/releases/0.1.7/librepcb-0.1.7-source.zip && unzip librepcb-0.1.7.zip`
3. `mkdir build && cd build`
4. `cmake .. -DUSE_OPENCASCADE=0 -DLIBREPCB_REPRODUCIBLE=1`
5. `make`


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
3. `./make.sh`

