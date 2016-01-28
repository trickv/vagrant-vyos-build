Vagrant.configure(2) do |config|
  config.vm.box = "debian/jessie64"
  config.vm.provision "shell", path: "init.sh"
  config.vm.provision "file", source: "~/.gitconfig", destination: ".gitconfig"
  config.vm.provision "file", source: "~/.vimrc", destination: ".vimrc"
end

# -*- mode: ruby -*-
# vi: set ft=ruby :
