#!/bin/bash

pwd=$(pwd)

# make executables and shared libraries available
export PATH="$pwd/bin:$PATH"
export LD_LIBRARY_PATH="$pwd/lib:$pwd/qt5/lib:$LD_LIBRARY_PATH"

# set some qt specific paths
export QT_XKB_CONFIG_ROOT="$pwd/xkbpandora:/usr/share/X11/xkb"
export QT_PLUGIN_PATH="$pwd/qt5/plugins"

# set home directory
export HOME="$pwd/home"
export XDG_DATA_HOME="$pwd/home"
export XDG_CACHE_HOME="$pwd/home/cache"
export XDG_CONFIG_HOME="$pwd/home/config"

librepcb "$@"
