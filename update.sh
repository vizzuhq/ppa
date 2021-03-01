#!/bin/bash
cd docs/ubuntu

dpkg-scanpackages --multiversion . > Packages
gzip -k -f Packages

apt-ftparchive release . > Release
gpg --default-key "simon@vizzuhq.com" -abs -o - Release > Release.gpg
gpg --default-key "simon@vizzuhq.com" --clearsign -o - Release > InRelease

git add -A
git commit -m update

