class Artist
  attr_accessor :name, :songs
def initialize(name)
    @name = name
    @songs = []
  end
  def save
    @@all << self 
  end

  def self.all
    @@all 
  end
  
  
  
  
  
  
end
