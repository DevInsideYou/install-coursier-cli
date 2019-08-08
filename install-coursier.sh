#!/bin/bash

if [ "$1" == "" ]; then
    URL="https://git.io/coursier-cli"
else
    URL="https://github.com/coursier/coursier/releases/download/v$1/coursier"
fi

# install coursier
sudo curl -L $URL -o /usr/local/bin/coursier
sudo chmod +x /usr/local/bin/coursier
coursier --help

# remove yourself
rm $0
