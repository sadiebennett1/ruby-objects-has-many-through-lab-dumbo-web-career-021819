def Artist
  @@all = []
  attr_reader :name
  def initialize(name)
    @name = name 
  
  def self.all
    @@all
  end
  
  def new_song(song_name, genre)
  end
  
  def songs
  end
  
    
end