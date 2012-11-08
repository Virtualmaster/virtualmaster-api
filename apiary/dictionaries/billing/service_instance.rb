module Dictionaries
  module ServiceInstance
    def self.not_saved
      {:service_instance => {
        :id => 1,
        :identificator => "virtual-1",
        :price => 1.5,
        :currency => "CZK",
        :service_attributes => {
          :volume => 3
        },
        :version => 1
      }}
    end

    def self.saved
      i = self.not_saved
      module_name = self.to_s.split("::").last.underscore
      i[module_name.to_sym][:id] = 1
      i[module_name.to_sym][:customer_id] = 1
      i
    end
        
    def self.all_saved
      [ServiceInstance.saved]
    end
  end
end