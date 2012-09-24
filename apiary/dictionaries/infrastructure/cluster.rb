module Dictionaries
  module Cluster
    def self.not_saved
      { cluster: {
        tenant_id: 1,
        name: 'Virtualaster Prague - locality 1',
        realm_name: 'vm-prague-1',
        public: 'true',
      }
      }
    end
    def self.saved
      self.not_saved.merge({id: 1})
    end
  end
end