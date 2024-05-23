#!/bin/bash -ex

echo "Beginning ($0)"

# apt install -y snapd
# snap install snapcraft --classic
# systemctl enable snapd.service
# systemctl start snapd.service
git config --global --add safe.directory /github/workspace

echo "-- Installing packages --"
npm ci

echo "-- grunt desktop-linux --"
grunt desktop-linux
