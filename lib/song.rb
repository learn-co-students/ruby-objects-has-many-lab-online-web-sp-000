require 'pry'
require_relative './artist.rb'
class Song
  attr_accessor :name, :genre, :artist
  @@all  = [] #CLASS variable, will expose it for Artist class to use


  def initialize(name)
    @name = name
    save
  end

  def save
    @@all << self
    #save is an instance method, so self is the song instance
    #push the song into the all array
  end

  def artist_name
    #problem: when theres no artist, @artist would be nil
    #and thus u can't check @artist.name cuz it says undefined and throw error
    #it doesnt say @artist.name = nil like u expect
    #you need to check @artist
    if @artist
      @artist.name
    else
      nil
    end
    #artist is an instnace, not a string, need to access the isntance's name property
  end


  def self.all
    @@all
  end


end

# rihanna = Artist.new("rihanna")
# puts rihanna.name
# werk = Song.new("werk")
# werk.artist = rihanna
# puts werk.artist_name
# runaway = Song.new("runaway")
# puts runaway.artist_name

#highlight the block and do command / to comment/uncomment the block
#this block can affect the song count method in ARtist class
