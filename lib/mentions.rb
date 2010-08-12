# Mentions

directory = File.expand_path(File.dirname(__FILE__))

module Mentions
  
  class << self
    
    def linkup(text, url, target)
      if target
        text.gsub!(/@([\w]+)(\W)?/, '@<a href="'+url+'" target="'+target+'">\1</a>\2')
      else
        text.gsub!(/@([\w]+)(\W)?/, '@<a href="'+url+'" target="'+target+'">\1</a>\2')
      end
      
      text
    end
    
  end
   
end
