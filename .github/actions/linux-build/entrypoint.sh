#!/bin/bash -ex

echo "Beginning ($0)"

apt install snapd
snap install snapcraft --classic
git config --global --add safe.directory /github/workspace

echo "-- Installing packages --"
npm ci

echo "-- grunt desktop-linux --"
grunt desktop-linux
