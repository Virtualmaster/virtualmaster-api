module Dictionaries
  module Tenant
    def self.not_saved
      {tenant:{
        name: 'Virtualmaster'
      }}
    end
    def self.saved
      self.not_saved.merge({id: 1})
    end

  end
end