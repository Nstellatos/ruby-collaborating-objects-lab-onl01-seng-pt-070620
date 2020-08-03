class Artist
  attr_accessor :name
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
      Song.all.select do |song|
        song.artist == self 
      end 
    end
  def self.find_or_create_by_name(name)
    if self.all.find {|artist| artist.name == name}
    {|artist| artist.name == name}
  else
    new_artist = Artist.new(name)
    new_artist
  end
end


  
  
  
  
  
