module Dictionaries
  module Vif
    def self.not_saved
      {vif:{
        name: 'eth0',
        mac: '00:00:00:00:00:00',
        instance_id: 1,
      }}
    end
    def self.saved
      self.not_saved.merge({id: 1})
    end

  end
end