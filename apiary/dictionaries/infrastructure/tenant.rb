module Dictionaries
  module Tenant
    def self.not_saved
      {tenant:{
        name: 'Virtualmaster'
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