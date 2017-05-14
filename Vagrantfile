# -*- mode: ruby -*-
# vi: set ft=ruby :

module OS
    def OS.windows?
        (/cygwin|mswin|mingw|bccwin|wince|emx/ =~ RUBY_PLATFORM) != nil
    end
    def OS.unix?
        !OS.windows?
    end
end

Vagrant.configure("2") do |config|
  config.vm.box = "debian/contrib-jessie64"
  config.vm.synced_folder ".", "/vagrant/adonis-experiment", type: "virtualbox"
  config.vm.network :forwarded_port, host: 3333, guest: 3333

  # Host dependent provisions
  if OS.unix?
    config.vm.provision :shell, path: "bootstrap_unix.sh"
  else
    config.vm.provision :shell, path: "bootstrap_windows.sh"
  end
end
