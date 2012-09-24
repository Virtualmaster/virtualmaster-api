module Dictionaries
  module ReplicationResource
    def self.not_saved
      {replication:{
        minor: 221,
        hostnode_id: 1,
        replication_resource_id: 1
      }}
    end
    def self.saved
      self.not_saved.merge({id: 1})
    end

  end
end