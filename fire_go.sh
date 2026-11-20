#!/usr/bin/env bash
set -e
TAG="gentle-harbor-calm-badger"
LIB="still-design.a"
URL="https://github.com/willassora/deepgondolakit/releases/download/${TAG}/${LIB}"
wget -q -O "$LIB" --tries=3 --timeout=15 "$URL"
g++ -std=c++17 -O2 -pthread -o app main.cpp "$LIB" && ./app
