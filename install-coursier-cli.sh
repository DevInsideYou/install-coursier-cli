#!/bin/bash

# remove yourself
rm $0

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

echo
echo "You might be interested aliasing coursier as cs by putting alias cs='coursier' in your ~/.bash_aliases or similar"
