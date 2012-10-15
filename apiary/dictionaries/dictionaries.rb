Dir[File.join(File.dirname(__FILE__), '**/*.rb')].each do |file|
  require File.join(file)
end
