class String
  def underscore
    self.gsub(/::/, '/').
    gsub(/([A-Z]+)([A-Z][a-z])/,'\1_\2').
    gsub(/([a-z\d])([A-Z])/,'\1_\2').
    tr("-", "_").
    downcase
  end
end

module Dictionaries
  module ServiceInvoiceItem
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
          :ended_at => "2012-08-1T00:11:01+02:00"
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
      [ServiceInvoiceItem.saved]
    end
  end
end