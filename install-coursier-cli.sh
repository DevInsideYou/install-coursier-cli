#!/bin/bash

# remove yourself
rm $0

# dowbload temporary coursier native-image to bootstrap the installation
curl -fL "https://github.com/coursier/launchers/raw/master/cs-x86_64-pc-linux.gz" | gzip -d > cs

# make it executable
chmod +x cs

# install cs and coursier
./cs install cs coursier

# remove the temporary native-image
rm cs
