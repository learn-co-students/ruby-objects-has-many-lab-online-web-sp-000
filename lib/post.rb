class Post
	attr_accessor :title, :author

	@@all = []

	def initialize(title, author = nil)
		@title = title
		@author = author
		save
	end

	def save
		@@all << self
	end

	def self.all
		@@all
	end

	def author
		@author
	end

	def author_name
		if self.author == nil
			return nil
		else
			self.author.name
		end
	end
end