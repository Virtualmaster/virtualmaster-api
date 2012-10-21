module Dictionaries
  module Customer
    def self.not_saved
      {:customer => {
          :email => "ak@vmin.cz",
          :legal_name => "ACME ltd",
          :street => "Mulholand Drive",
          :number => "13",
          :address2 => "Upthehill quarter",
          :city => "Cernosice",
          :invoice_name => "Oh Mc'Donald",
          :zip => "25228",
          :ic => "12345678",
          :vat => "12345678",
          :country => "CZ",
          :paying_vat => "true",
          :vat_prefix => "CZ",
          :locale => "cs" 
      }}
    end
    
    def self.saved
      i = self.not_saved
      module_name = self.to_s.split("::").last.downcase
      i[module_name.to_sym][:id] = 1
      i
    end
    
    def self.all_saved
      [Customer.saved]
    end
  end
end