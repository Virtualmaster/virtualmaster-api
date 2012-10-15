module Dictionaries
  module Instance
    def self.not_saved
      { :instance => {
        :hostname =>'test.dom.tld',
        :memory => 1024,
        :storage => 10,
        :image => 'http://imagestore.virtualmaster.cz/images/1',
        :state => 'running',
        :ipv4_addresses => 1,
        :ipv6_addresses => 1,
        :cores => 4,
        :hypervisor => 'xen-paravirt',
        :cluster_id => 1,
        :tenant_id => 1,
        :hostnode_id => 1
      }}
    end

    def self.saved
      i = self.not_saved
      module_name = self.to_s.split("::").last.downcase
      i[module_name.to_sym][:id] = 1
      i
    end
    
    def self.many_saved
      [Instance.saved, Instance.saved]
    end
  end
end