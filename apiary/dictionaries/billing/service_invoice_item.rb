module Dictionaries
  module ServiceInvoiceItem

    def self.module_name
      self.to_s.split("::").last.underscore.to_sym
    end

    def self.not_saved
      {:service_invoice_item => {
          :desc => "Item description",
          :quantity => 10,
          :unitprice => 1,
          :discount => 0,
          :tax => 20,
          :note => "Item note",
          :code => "service",
          :started_at => "2012-08-1T00:01:01+02:00",
          :ended_at => "2012-08-1T00:11:01+02:00",
          :code => "discount",
          :currency => "czk"
      }}
    end

    def self.saved
      i = self.not_saved
      i[self.module_name][:id] = 1
      i[self.module_name][:customer_id] = 1
      i
    end
        
    def self.all_saved
      [self.saved]
    end
  end
end