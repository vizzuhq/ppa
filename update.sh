#!/bin/bash
cd docs/ubuntu

dpkg-scanpackages --multiversion . > Packages
gzip -k -f Packages

apt-ftparchive release . > Release
gpg --default-key "david.andras.vegh+github@gmail.com" -abs -o - Release > Release.gpg
gpg --default-key "david.andras.vegh+github@gmail.com" --clearsign -o - Release > InRelease

git add -A
git commit -m update

