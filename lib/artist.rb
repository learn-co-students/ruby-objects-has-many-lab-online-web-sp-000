class Artist
  attr_accessor :name

  def initialize(name)
    @name = name 
    @songs = [] 
  end

  def songs
    @songs
  end

  #the argument song is of type Song
  def add_song(song)
    song.artist = self
    @songs << song
  end

  #the argument song_name is of type String
  def add_song_by_name(song_name)
    song = Song.new(song_name)
    song.artist =  self
    @songs << song
  end

  def self.song_count
     Song.all.count {|song| !song.artist.nil?}
  end
end
