class Artist 
  attr_accessor :name, :songs 
  @@song_count = []
  def initialize(name)
    @name =  name
    @songs = []
  end
  
  def add_song(song)
    @songs << song
    song.artist = self
    @@song_count << song
  end
    
  def add_song_by_name(name)
    new_song = Song.new(name)
    @songs << new_song
    new_song.artist =  self
    @@song_count << name
    new_song.name
  end
  
  def Artist.song_count
    @@song_count.length 
  end
    
  end