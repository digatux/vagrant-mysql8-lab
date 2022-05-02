
VAGRANTFILE_API_VERSION ||= "2"
TIMEOUT = 600

# Boxname
BOXNAME = "bento/ubuntu-20.04"

NET = "192.168.56"


Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.define :dbserver, primary: true do | dbserver_config |
    dbserver_config.vm.hostname = "dbserver.domain.com.br"
    dbserver_config.vm.box = BOXNAME
    #dbserver_config.vm.box_version = "202112.19.0"
    dbserver_config.vm.boot_timeout = TIMEOUT
    dbserver_config.vm.network "private_network", ip: "#{NET}.110"
    dbserver_config.vm.network :forwarded_port, guest: 3306, host: 3306
    dbserver_config.vm.provision :shell, :path => "provisions/provision_db-server.sh"
    dbserver_config.vm.synced_folder ".", "/sync_folder", :mount_options => ["dmode=777", "fmode=666"]
    config.vm.provider "virtualbox" do |vb|
      vb.memory = "1024"
      vb.cpus = "1"
      #vb.name = "db-server.domain.com.br"
      vb.customize ["modifyvm", :id, "--uartmode1", "disconnected"]
    end
  end
end

