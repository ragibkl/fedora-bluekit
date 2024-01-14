#!/usr/bin/env bash

# Tell this script to exit if there are any errors.
# You should have this in every custom script, to ensure that your completed
# builds actually ran successfully without any errors!
set -oue pipefail

# Your code goes here.
echo 'Setting up HeadsetControl'

echo 'Cloning the HeadsetControl repo from GitHub'
git clone https://github.com/Sapd/HeadsetControl
cd HeadsetControl
mkdir build
cd build

echo 'Building HeadsetControl'
cmake ..
make

echo 'Installing HeadsetControl'
make install

echo 'HeadsetControl setup completed!'
