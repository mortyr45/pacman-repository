FROM docker.io/library/archlinux:base-devel

# Use a fixed Arch Linux mirror to ensure reproducible builds
RUN echo 'Server = https://mirror.rackspace.com/archlinux/$repo/os/$arch' > /etc/pacman.d/mirrorlist

RUN echo "ALL ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers
RUN useradd --create-home user

RUN pacman --noconfirm -Syu \
    bat \
    devtools \
    git \
    go \
    nano \
    namcap \
    pacman-contrib \
    rust
RUN pacman-key --init

USER user
