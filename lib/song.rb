class Song
	attr_accessor :artist
	attr_reader :name

	@@all = []

	def self.all
		@@all
	end

	def initialize(name)
		@name = name
		@@all.push(self)
	end

	def artist_name
		artist.name if artist
	end
end
