class MP3Importer 
  attr_accessor :path
  
  def initialize(path)
    @path = path
    end
  end 
  
  def files 
    file = Dir.entries(@path).select {|f| !File.directory? f}
  end
  
  #def import 
    
  #end
  
  #def files
    
  #end
  