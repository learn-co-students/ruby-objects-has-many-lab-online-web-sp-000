class Artist
	attr_accessor :name

	def self.song_count
		Song.all.size
	end

	def initialize(name)
		@name = name
	end

	def songs
		Song.all.filter{|song| song.artist == self}
	end

	def add_song(song)
		song.artist = self
	end

	def add_song_by_name(name)
		Song.new(name).artist = self
	end
end
