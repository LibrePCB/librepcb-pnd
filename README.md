# LibrePCB Packet for OpenPandora

This repository contains everything to create the LibrePCB PND which can then be uploaded to the
[OpenPandora Repo](https://repo.openpandora.org/?page=detail&app=librepcb).

## Build Binaries on the OpenPandora

### Requirements

Install [Code::Blocks Package](http://repo.openpandora.org/?page=detail&app=codeblocks6022).

### Build LibrePCB

1. Start -> Development -> Dev Command Line Interface
2. `cd /media/SD && git clone --recursive https://github.com/LibrePCB/LibrePCB.git`
3. `mkdir build && cd build`
4. `qmake5 -r ../librepcb.pro && make`


## Build PND on Ubuntu

### Requirements

```
sudo apt install squashfs-tools
```

### Building

1. Increment build number in `PXML.xml`
2. `./make.sh`

