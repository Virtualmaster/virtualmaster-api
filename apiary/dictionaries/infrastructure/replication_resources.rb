class String
  def underscore
    self.gsub(/::/, '/').
    gsub(/([A-Z]+)([A-Z][a-z])/,'\1_\2').
    gsub(/([a-z\d])([A-Z])/,'\1_\2').
    tr("-", "_").
    downcase
  end
end

module Dictionaries
  module ReplicationResource
    def self.not_saved
      {:replication_resource => {
        :minor => 221,
        :hostnode_id => 1,
        :replication_resource_id => 1
      }}
    end
    def self.saved
      i = self.not_saved
      module_name = self.to_s.split("::").last.underscore
      i[module_name.to_sym][:id] = 1
      i
    end
  end
end

