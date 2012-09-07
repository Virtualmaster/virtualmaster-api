module Dictionaries
  module Subnet
    def self.not_saved
      {
        name: 'mc-colo-1',
        network: '10.0.0.0',
        mask: '255.255.255.0',
        gateway: '10.0.0.1',
        version: 4
      }
    end
  end
end