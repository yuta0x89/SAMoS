#!/usr/bin/env bash
set -e

apt-get update
apt-get install -y --no-install-recommends \
    build-essential \
    cmake \
    ninja-build \
    git \
    libboost-all-dev \
    libgsl-dev \
    libcgal-dev \
    libvtk7-dev \
    doxygen \
    python3 \
    python3-pip \
    python3-numpy
apt-get clean
rm -rf /var/lib/apt/lists/*

bash .devcontainer/build-samos.sh
