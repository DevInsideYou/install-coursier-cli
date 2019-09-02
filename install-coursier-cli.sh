#!/bin/bash

if [ "$1" == "" ]; then
    URL="https://git.io/coursier-cli"
else
    URL="https://github.com/coursier/coursier/releases/download/v$1/coursier"
fi

TARGET=/usr/local/bin/coursier

# install curl
sudo apt install -yqqq curl

# install coursier
sudo curl -L $URL -o $TARGET
sudo chmod +x $TARGET

echo

coursier --help

echo

echo '"coursier" is now on the path'

# remove yourself
rm $0
