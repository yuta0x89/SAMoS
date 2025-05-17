FROM mcr.microsoft.com/devcontainers/cpp:0-ubuntu-22.04

# Install dependencies
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
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
        python3-numpy \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

# Copy build script
COPY .devcontainer/build-samos.sh /usr/local/bin/build-samos.sh
RUN chmod +x /usr/local/bin/build-samos.sh

ENV PATH="$PATH:$HOME/samos/bin" \
    PYTHONPATH="$PYTHONPATH:$HOME/samos/analysis"
