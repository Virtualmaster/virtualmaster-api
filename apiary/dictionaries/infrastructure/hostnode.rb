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
      i = self.not_saved
      module_name = self.to_s.split("::").last.downcase
      i[module_name.to_sym][:id] = 1
      i
    end

  end
end