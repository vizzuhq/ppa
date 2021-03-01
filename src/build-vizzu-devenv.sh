#/bin/bash
dpkg-deb --build vizzu-devenv .
mv vizzu-devenv_0.1_amd64.deb ../docs/ubuntu
