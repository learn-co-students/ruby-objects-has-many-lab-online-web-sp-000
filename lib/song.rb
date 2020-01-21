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
    # if song has an artist name, return what?
    # if doesn't have an artist name, return nil 
    self.artist.name
  end 
end 

