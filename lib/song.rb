class Song
  attr_accessor :name, :genre, :artist
  
  @@all = []
  
  def initialize(name)
    @name = name
    save
  end
  
  def save
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def artist_name
    unless self.artist.nil?
      self.artist.name
    end
  end
end