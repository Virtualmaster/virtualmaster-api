module Dictionaries
  module Volgroup
    def self.not_saved
      {:volgroup => {
        :name => 'node1_main',
        :comment => 'On top of raid 1+0',
        :size => '1024',
        :hostnode_id => 1,
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