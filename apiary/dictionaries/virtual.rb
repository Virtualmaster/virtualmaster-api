module Dictionaries
  module Virtual
    def self.not_saved
      {
        hostname: 'test.dom.tld',
        ram: 1024,
        storage: 10
      }
    end
  end
end