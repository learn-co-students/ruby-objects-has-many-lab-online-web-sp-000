class Artist
  attr_accessor :name, :artist
  def initialize(name)
    @name = name
    # @songs = []
  end
  def add_song(song)
     song.artist = self
      # @songs << song
  end
  def songs
  Song.all.select {|song| song.artist == self}
  end
def  add_song_by_name(by_name)
   song = Song.new(by_name)
   add_song(song)
end
 def self.song_count
   Song.all.length
 end
end
