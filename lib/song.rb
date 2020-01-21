require 'pry'

class Song 
  attr_accessor :name, :artist
  
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
    # if song has an artist name, return the artist_name?
    # if doesn't have an artist name, return nil 
    if self.artist.name
      self.artist.name 
    else 
      nil
    end 
  end 
end 

