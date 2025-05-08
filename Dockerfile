FROM docker.io/library/archlinux:base-devel

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
