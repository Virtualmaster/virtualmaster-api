module Dictionaries
  module Cluster
    def self.not_saved
      { :cluster => {
        :tenant_id => 1,
        :name => 'Virtualaster Prague - locality 1',
        :realm_name => 'vm-prague-1',
        :public => 'true',
      }
      }
    end
    def self.saved
      i = self.not_saved
      module_name = self.to_s.split("::").last.downcase
      i[module_name.to_sym][:id] = 1
      i
    end
  end
end