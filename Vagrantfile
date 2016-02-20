Vagrant::Config.run do |config|
  config.vm.box     = "precise64"
  config.vm.box_url = "http://files.vagrantup.com/precise64.box"
  config.vm.host_name =  "vagrant.example.com"
  
  # config.vm.network "33.33.33.10"
  config.vm.forward_port 27017, 27018
  config.vm.provision "shell", path: "upgrade_puppet.sh"
  
  config.vm.provision :puppet do |puppet|
    puppet.manifests_path = "manifests"
    puppet.manifest_file  = "base.pp"
    puppet.module_path    = "modules"
	puppet.options = "--verbose --debug"
  end
end
