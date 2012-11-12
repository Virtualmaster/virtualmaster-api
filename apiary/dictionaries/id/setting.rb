module Dictionaries
  module Setting
    def self.not_saved
      {:setting => {
        :low_credit_treshold => 100,
        :api_key => 'APIKEYFORTESTING'
      }}
    end
  end
end