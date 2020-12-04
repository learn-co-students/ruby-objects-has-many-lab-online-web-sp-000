class Song 
  attr_accessor :name
  attr_accessor :artist 
  attr_accessor :genre
  
  @@all = []
  
  def initialize(name)
    @name = name 
    save
  end
  
  def save
    @@all.push(self) 
  end 
  
  def self.all 
    return @@all 
  end 
  
  def artist_name 
    return defined?(@artist.name) == nil ? nil : @artist.name
  end
end