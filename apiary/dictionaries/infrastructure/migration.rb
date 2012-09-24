module Dictionaries
  module Migration
    def self.not_saved
      {migration:{
        instance_id: 1,
        target_hostnode_id: 1,
        source_hostnode_id: 2,
        state: 'ready'
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