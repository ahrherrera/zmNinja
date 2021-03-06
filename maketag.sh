#!/bin/sh
read -p "Please generate CHANGELOG and commit it BEFORE you tag. Press a key when ready..."
orig=$1
VER="${orig/v//}"
echo "Creating tag:$VER"
git tag -fa v$VER -m"v$VER"
git push -f --tags
