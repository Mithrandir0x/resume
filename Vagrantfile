# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "precise64"
  config.vm.box_url = "http://files.vagrantup.com/precise64.box"
  config.vm.network :public_network, :mac => '0800276C2F9D'
  config.vm.provision :shell, :path => './bootstrap.sh'

end
