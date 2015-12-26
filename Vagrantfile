Vagrant.configure("2") do |config|
  config.vm.synced_folder ".", "/vagrant", disabled: true
  config.vm.synced_folder "notebooks/", "/home/vagrant/notebooks"
  config.vm.box = "hashicorp/precise32"
  config.vm.network "forwarded_port", guest: 8888, host: 8080

  config.berkshelf.enabled = true

  config.vm.provision "chef_zero" do |chef|
    chef.json = {'anaconda' => { 'accept_license' => 'yes'}}
    chef.add_recipe "python"
    chef.add_recipe "anaconda::python_workaround"
    chef.add_recipe "anaconda"
    chef.add_recipe "anaconda::shell_conveniences"
    chef.add_recipe "vagrant-jupyter::config"
  end
end
