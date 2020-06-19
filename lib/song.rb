require 'pry'

class Song 
  attr_accessor :name, :artist 
  
  @@all = []
  
  def initialize(title)
    @name = title 
    @artist = "unknown"
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end 
  
  def artist_name 
    if @artist == "unknown"
      nil
    else 
      @artist.name 
    end  
  end 
  
end 