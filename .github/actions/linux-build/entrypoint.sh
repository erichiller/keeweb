#!/bin/bash -e


git config --global --add safe.directory /github/workspace
npm ci
grunt desktop-linux
