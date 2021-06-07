class Artist
  attr_accessor :name
	#@@song_count = 0
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
		#@@song_count += 1
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end
# vvv if this causes trouble then check and adjust as needed vvv
	def add_song_by_name(name)
		song = Song.new(name)
		add_song(song)
	end
	def self.song_count
	 	Song.all.count
	end
end
