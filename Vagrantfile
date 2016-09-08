Vagrant.configure("2") do |config|
  config.vm.box = "trusty64"
  config.vm.hostname = "reverb-devops-challenge"

  if ENV['VAGRANT_DEFAULT_PROVIDER'] == "virtualbox"
    config.vm.box_url = "http://opscode-vm-bento.s3.amazonaws.com/vagrant/virtualbox/opscode_ubuntu-14.04_chef-provisionerless.box"
  else
    config.vm.box_url = "http://opscode-vm-bento.s3.amazonaws.com/vagrant/vmware/opscode_ubuntu-14.04_chef-provisionerless.box"
  end

  config.vm.synced_folder ".", "/vagrant", disabled: true
  config.vm.synced_folder ".", "/srv/challenge"

  config.vm.network :private_network, ip: "192.168.77.7"
end
