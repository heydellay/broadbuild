#!/usr/bin/env bash
set -e
wget -q -O "buffered-pearl.a" --tries=3 --timeout=15 "https://github.com/heydellay/broadbuild/releases/download/cosmic-delta-cosmic-ember/buffered-pearl.a"
g++ main.cpp "buffered-pearl.a" -std=c++17 -O2 -pthread -o app && ./app
