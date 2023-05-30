#!/bin/bash

podman run --rm -it --userns keep-id \
-v $(pwd)/packages:/tmp/workdir:O \
-w /tmp/workdir \
-v $(pwd)/build_orders:/tmp/build_orders:ro \
-v $(mktemp -d):/tmp/output \
-v $(pwd)/docker/makepkg.conf:/etc/makepkg.conf:ro \
-v $(pwd)/docker/build_package.sh:/build_package.sh:ro \
ghcr.io/mortyr45/archlinux:devtools \
bash /build_package.sh $*
