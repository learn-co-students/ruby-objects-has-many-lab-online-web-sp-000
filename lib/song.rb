require "pry"
class Song 
  attr_accessor :name, :artist, :song
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end 
  def self.all 
    @@all
  end
  def artist
    @artist 
  end 
  def artist_name
    artist.nil? ? nil : artist.name
  end 
end 