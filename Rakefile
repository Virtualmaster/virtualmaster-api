task :compile do
  require 'json'

  #require dictionaries
  Dir['apiary/dictionaries/*.rb'].each do |file|
    require File.join(File.dirname(__FILE__), file)
  end
  
  include Dictionaries
  
  buffer = []
  
  
  Dir['./apiary/**/*.apib'].each do |file|
    if File.file?(file)
      File.open(file,'r').each_line do |line|
        dictionary_matcher = "*****"
        if line.include?(dictionary_matcher)
          dictionary_name = line.gsub(dictionary_matcher,'').strip
          module_name = dictionary_name.split('.')[0]
          method = dictionary_name.split('.')[1]
          directory = Kernel.const_get(module_name).send(method)

          if directory.class == Hash
            output = JSON.pretty_generate(directory)
          else
            output = directory
          end

          buffer << output
        else 
          buffer << line
        end
      end
    end
  end

  #write compiled apiary file
  File.open('./apiary.apib','w') do |file|
    buffer.each do |line|
      file.puts line
    end
  end
end
 