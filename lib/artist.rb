class Artist
  @@all = []
  attr_reader :name
  def initialize(name)
    @name = name 
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def new_song(song_name, genre)
    Song.new()
  end
  
  def songs
    Song.all.select do |song|
      song.artist = self
    end
  end
  
    
end