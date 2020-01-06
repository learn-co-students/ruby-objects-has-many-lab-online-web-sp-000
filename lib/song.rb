class Song
  
 @@all = []
 
 attr_accessor :name, :artist 
 
 def initialize(name)
   @name = name 
   @@all << self
  end
  
  def self.all 
   @@all.each {|songs| songs.name}
  end 
  
  def artist_name
    if artist
      self.artist.name
    else
      nil
    end
  end

  
end