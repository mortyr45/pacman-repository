#!/bin/bash

set -euo pipefail

podman run --rm -it --userns keep-id \
-v $(pwd)/packages:/tmp/workdir:O \
-w /tmp/workdir \
ghcr.io/mortyr45/archlinux:devtools \
namcap -i */PKGBUILD
