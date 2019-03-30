class Artist 
  attr_accessor :name 
  
  def initialize(name)
    @name = name
    @songs = []
  end
  
  def add_song(song)
    @songs << song
    song.artist = self 
  end
  
  def songs
    @songs
  end 
  
  def add_song_by_name(name, genre)
    song = Song.new(name, genre)
    @songs << song
    song.artist = self 
end

class Song 
  attr_accessor :artist, :name, :genre 
  
  def initialize(name, genre)
    @name = name
    @genre = genre
  end
  
  def artist_name
    self.artist.name 
  end
end 


=begin 
jay_z = Artist.new("Jay-Z")
ninetynine_problems = Song.new("99 Problems", "rap")
crazy_in_love = Song.new("Crazy in Love", "pop")
 
jay_z.add_song(ninetynine_problems)
jay_z.add_song(crazy_in_love)
=end 


class Song 
  
  attr_accessor :title, :artist 
  
  def initialize(title)
    @title = title
  end
end

class Artist 
  attr_accessor :name, :genre 
  
  def initialize(name, genre)
    @name = name
    @genre = genre
  end 
  
end 

drake = Artist.new("Drake", "rap")
hotline_bling = Song.new("Hotline Bling")

hotline_bling.artist = drake

puts hotline_bling.artist.genre
puts hotline_bling.artist.name