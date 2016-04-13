# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure(2) do |config|
  # The most common configuration options are documented and commented below.
  # For a complete reference, please see the online documentation at
  # https://docs.vagrantup.com.

  # Every Vagrant development environment requires a box. You can search for
  # boxes at https://atlas.hashicorp.com/search.
  #config.vm.box = "puppetlabs/centos-7.0-64-puppet-enterprise"
  config.vm.box = "vStone/centos-7.x-puppet.3.x"
  config.vm.box_download_insecure = true

  config.vm.provider "virtualbox" do |vb|
    vb.memory = "1024"
  end
  # documentation for more information about their specific syntax and use.
  # config.vm.provision "shell", inline <<-SHELL
  #   sudo apt-get install apache2
  # SHELL
  config.vm.provision "puppet" do |puppet|
    puppet.manifests_path     = "manifests"
    puppet.manifest_file      = "site.pp"
    puppet.module_path        = "modules"
    # puppet.hiera_config_path  = "hiera.yaml"
    #puppet.options            = "--verbose --debug"
  end

  config.vm.define "sonar" do | node| 
   node.vm.network "private_network", ip: "192.168.254.182"
   node.vm.hostname = "sonar"
  end
end
