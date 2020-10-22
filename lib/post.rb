class Post
	attr_accessor :author
	attr_reader :title

	@@all = []

	def self.all
		@@all
	end

	def initialize(title)
		@title = title
		@@all.push(self)
	end

	def author_name
		author.name if author
	end
end
