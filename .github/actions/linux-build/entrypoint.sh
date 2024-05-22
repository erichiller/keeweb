#!/bin/bash -e -x

echo "Beginning ($0)"
git config --global --add safe.directory /github/workspace

echo "-- Installing packages --"
npm ci

echo "-- grunt desktop-linux --"
grunt desktop-linux
