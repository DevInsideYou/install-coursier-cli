#!/bin/bash

# remove yourself
rm $0

# install curl if necessary
if [[ -z $(dpkg -l | grep curl) ]] ; then
  echo 'Installing curl...'
  sudo apt install -yqqq curl
fi

# dowbload temporary coursier native-image to bootstrap the installation
curl -fLo cs https://git.io/coursier-cli-"$(uname | tr LD ld)"

# make it executable
chmod +x cs

# install cs and coursier
./cs install cs coursier

# remove the temporary native-image
rm cs
