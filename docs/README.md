# Install Vizzu build dependencies on Ubuntu 20.04

Add Vizzu PPA to the repository list:

`wget -O - https://vizzuhq.github.io/ppa/ubuntu/KEY.gpg | sudo apt-key add -`

`sudo add-apt-repository "deb https://vizzuhq.github.io/ppa/ubuntu ./"`

Install build dependencies:

`sudo apt-get install vizzu-devenv`
