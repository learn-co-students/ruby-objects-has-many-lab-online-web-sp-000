class Song 
  attr_accessor :artist, :name 
  @@all = []
  
  def initialize(name)
    @name = name  
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end 
   
   def artist_name 
    if @artist == nil 
      return nil 
    else
      return @artist.name 
    end 
   end 
end 