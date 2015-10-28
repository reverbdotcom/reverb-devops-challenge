Vagrant.configure("2") do |config|
  config.vm.box = "precise64"
  config.vm.hostname = "reverb-devops-challenge"
  config.vm.box_url = "http://opscode-vm-bento.s3.amazonaws.com/vagrant/virtualbox/opscode_ubuntu-12.04_chef-provisionerless.box"
  
  config.vm.synced_folder ".", "/vagrant", disabled: true
  config.vm.synced_folder ".", "/srv/challenge"

  config.vm.network :private_network, ip: "192.168.77.7"
end
