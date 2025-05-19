#!/usr/bin/env bash
set -e

# Run from repository root
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$SCRIPT_DIR/.."

cmake -B build -S . -DCMAKE_BUILD_TYPE=Release
cmake --build build -j $(nproc)
cmake --install build

