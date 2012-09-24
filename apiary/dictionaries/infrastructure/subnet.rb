module Dictionaries
  module Subnet
    def self.not_saved
      {subnet:{
        name: 'mc-colo-1',
        network: '10.0.0.0',
        mask: '255.255.255.0',
        gateway: '10.0.0.1',
        version: 4
      }}
    end
    def self.saved
      self.not_saved.merge({id: 1})
    end

  end
end