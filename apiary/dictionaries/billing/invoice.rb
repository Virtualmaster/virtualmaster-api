module Dictionaries
  module Invoice
    def self.not_saved

    end
    
    def self.saved
      {:invoice => {
          :customer_id => 1,
          :number => "2012010001",
          :issued_at => "2012-01-01",
          :due_at => "2012-01-15",
          :fulfillment_at => "2011-12-31",
          :issued_by => "TinTin MacGyver",
          :payment_type => "bank_transfer",
          :rounding => 0,
          :state => "paid",
          :type => "ServiceInvoice",
          :tax_rate => 20,
          :price_total => 2200,
          :language => "cs",
          :vs => "2012010001",
          :currency => "CZK",
          :tax_mode => "czech" 
      }}
    end
    
    def self.all_saved
      [Invoice.saved,Invoice.saved]
    end
  end
end