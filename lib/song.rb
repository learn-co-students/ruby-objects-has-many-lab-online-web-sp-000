require 'pry'
class Song 
  attr_accessor :name, :artist
  @@all = []
  def initialize(name)
    @name = name 
    @@all << self 
  end 
  
  def self.all 
    @@all
  end 
  
  def artist_name
    return nil unless self.artist
    self.artist.name
  end
end 