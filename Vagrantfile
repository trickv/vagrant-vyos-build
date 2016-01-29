Vagrant.configure(2) do |config|
  config.vm.box = "debian/jessie64"
  config.vm.provision "shell", path: "init.sh"
  config.vm.provision "file", source: "~/.gitconfig", destination: ".gitconfig"
  config.vm.provision "file", source: "~/.vimrc", destination: ".vimrc"
  config.vm.provider :aws do |aws|
    aws.ami = "ami-7747d01e" # Debian 8
  end
end

# -*- mode: ruby -*-
# vi: set ft=ruby :
