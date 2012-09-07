module Dictionaries
  module Migration
    def self.not_saved
      {
        instance_id: 1,
        target_hostnode_id: 1,
        source_hostnode_id: 2,
        state: 'ready'
      }
    end
  end
end