module Dictionaries
  module Ip
    def self.not_saved
      {ip:{
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
      i = self.not_saved
      module_name = self.to_s.split("::").last.downcase
      i[module_name.to_sym][:id] = 1
      i
    end

  end
end