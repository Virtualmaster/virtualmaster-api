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
      i = self.not_saved
      module_name = self.to_s.split("::").last.downcase
      i[module_name.to_sym][:id] = 1
      i
    end
    
  end
end