module Dictionaries
  module AuthorizedBackend

    def self.saved
      { 
        "authorized_backend" => {
          "id" => '1',
          "backend_type" => 'Support',
          "person_id" => '1',
          "url" => 'http://virtualmaster.apiary.io',
          "credentials" => {
            "username" => "netmilk",
            "password" => '1234'
          },
          "id" => '1'
          }
      }
    end
    def self.all
      available_backends = ['Support', 'Billing', 'Infrastructure', 'Id']
      { 
        "authorized_backends" => available_backends.map{|backend_type| 
          b = AuthorizedBackend.saved
          b['authorized_backend']['backend_type'] = backend_type
          b
        }
      }
    end
  end
end