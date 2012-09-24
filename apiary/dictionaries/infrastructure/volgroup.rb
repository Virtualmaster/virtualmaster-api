module Dictionaries
  module Volgroup
    def self.not_saved
      {volgroup:{
        name: 'node1_main',
        comment: 'On top of raid 1+0',
        size: '1024',
        hostnode_id: 1,
      }}
    end
    def self.saved
      self.not_saved.merge({id: 1})
    end

  end
end