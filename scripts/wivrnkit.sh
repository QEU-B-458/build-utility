#!/bin/sh

# Symlink distrobox shims
./distrobox-shims.sh

# Update the container and install packages
pacman -Syu --noconfirm
grep -v '^#' ./boxkit.packages | xargs pacman -Syu --noconfirm
