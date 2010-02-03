$:.unshift(File.expand_path(File.dirname(__FILE__)))
require 'virtualbox/exceptions'
require 'virtualbox/command'
require 'virtualbox/abstract_model'
require 'virtualbox/proxies/collection'
require 'virtualbox/image'
require 'virtualbox/attached_device'
require 'virtualbox/dvd'
require 'virtualbox/extra_data'
require 'virtualbox/forwarded_port'
require 'virtualbox/hard_drive'
require 'virtualbox/nic'
require 'virtualbox/shared_folder'
require 'virtualbox/storage_controller'
require 'virtualbox/snapshot'
require 'virtualbox/vm'

module VirtualBox
  class <<self
    # Returns installed VirtualBox version like '3.1.2r56127'.
    def version
      Command.vboxmanage("-v").chomp.strip
    end
  end
end