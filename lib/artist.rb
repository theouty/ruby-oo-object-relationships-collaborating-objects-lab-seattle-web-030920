class Artist 
  attr_accessor :name, :song
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def add_song(song)
    song.artist = self 
  end
  
  def songs 
    Song.all.select{|song| song.artist == self}
  end
  
  def self.find_or_create_by_name(name)
    if self.all.find {|artist| artist.name == name} == nil 
      Artist.new(name)
      else
        self.all.find{|artist| artist.name == name}
    end
  end
  
  def print_songs 
    Song.all.each{|song| puts song.name if song.artist == self}
  end
  
end