Dir[File.join(File.dirname(__FILE__), 'dictionaries/**/*.rb')].each do |file|
  require File.join(file)
end
