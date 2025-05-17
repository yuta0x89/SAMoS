# Setup

```bash
apt-get update && apt-get install -y \
  build-essential cmake ninja-build git \
  libboost-all-dev libgsl-dev libcgal-dev \
  libvtk9-dev doxygen python3 python3-pip python3-numpy

bash .devcontainer/build-samos.sh
```
