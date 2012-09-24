module Dictionaries
  module Hostnode
    def self.not_saved
      { hostnode:{
        hostname: 'node1.vmin.cz',
        private_ip_id: 1,
        public_ip_id: 2,
        ram: 8096,
        cores: 8,
        comment: 'Probably faulty memory',
        tenant_id: 1,
        default_volgroup_id: 1,
        enabled: 'true',
        default_bridge: 'eth0',
        network_security: 'true',
        cluster_id: 1
      }}
    end
    def self.saved
      self.not_saved.merge({id: 1})
    end

  end
end