#/bin/bash
dpkg-deb --build vizzu-devenv .
mv vizzu-devenv_*_amd64.deb ../docs/ubuntu
