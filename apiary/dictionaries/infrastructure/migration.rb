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
      self.not_saved.merge({id: 1})
    end

  end
end