class Artist
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end 
  
  def add_song(song)
    song.artist = self
  end
  
  # I need to define an error called songs 
  def songs 
    Song.all.select {|song| song.artist == self}
  end 
  
  def add_song_by_name(song_name)
    #name_of_song = Song.new(song_name)
    name_of_song = Song.new(song_name)
    add_song(name_of_song)
  end 
  
  def self.song_count 
    Song.all.count
  end 
  
end 