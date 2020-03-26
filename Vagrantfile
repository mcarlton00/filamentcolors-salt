# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/eoan64"
  config.vm.synced_folder ".", "/vagrant", disabled: true

  # Share the salt states into the VM for masterless configuration
  config.vm.synced_folder "states", "/srv/salt"

  config.vm.define "app" do |app|
    app.vm.provision :salt do |salt|
      salt.masterless = true

      salt.minion_config = "saltminion/minion"
      # we don't need the minion running while masterless
      salt.install_type = "git"
      salt.install_args = "v2019.2.3"
      salt.bootstrap_options = "-X"

      # We won't run the state.apply while developing so
      # we can run it manually on the VMs
      salt.run_highstate = false
    end
    app.vm.provider "virtualbox" do |v|
        v.customize ["modifyvm", :id, "--memory", 1024]
        v.customize ["modifyvm", :id, "--cpus", 1]
        v.linked_clone = true
    end
  end
end
