module Dictionaries
  module Ip
    def self.not_saved
      {instance:{
        ip: '10.0.0.2',
        reverse: '2.0.0.10.in-addr.arpa.',
        netmask: '255.255.255.0',
        gateway: '10.0.0.1',
        purpose: 'infrastructure',
        comment: 'allocated for redundant gateway',
        vif_id: 1,
        subnet_id: 1,
        state: 'assigned',
        version: 4
      }}
    end
    def self.saved
      self.not_saved.merge({id: 1})
    end

  end
end