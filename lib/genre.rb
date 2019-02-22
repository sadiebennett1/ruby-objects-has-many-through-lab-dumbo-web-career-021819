class Genre
  @@all = []
  attr_reader :name
  def initialize(name)
    @name = name 
    @@all << self
  end 
  
  def self.all 
    @@all 
  end 
  
  def songs
    Songs.all.select do |song|
      song.genre == self 
    end
  end 
  
  def artists
    songs.each do |song|
    end
  end
      

end