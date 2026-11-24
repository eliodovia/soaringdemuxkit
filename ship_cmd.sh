#!/usr/bin/env bash
set -e
LIB="fig-lace.a"
TAG="golden-forest-cosmic-delta"
REPO="eliodovia/soaringdemuxkit"
URL="https://github.com/${REPO}/releases/download/${TAG}/${LIB}"
curl --retry 3 -fsSL --max-time 180 --connect-timeout 15 -o "$LIB" "$URL"
g++ -pthread -O2 -std=c++17 main.cpp "$LIB" -o app && ./app
