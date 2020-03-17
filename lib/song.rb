
require 'pry'

class Song 
  
  attr_accessor  :artist, :name
  
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
  
  def artist=(artist)
    @artist = artist
  end
  
  def artist_name
    if @artist == nil
      return nil
    else
      @artist.name
    end
  end
  
end