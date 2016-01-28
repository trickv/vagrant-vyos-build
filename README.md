# vagrant-vyos-build
Vagrant build box for Jessie / Beryllium+ builds

If you don't have a jessie-based build box handy, grab this one to set up a development environment rather quickly.

Prerequisites:
* vagrant
* virtualbox

Just clone this, and run:
 vagrant up
 vagrant ssh
 cd vyos-build
 ./configure
 sudo make iso
