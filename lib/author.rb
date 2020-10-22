class Author
	attr_accessor :name

	def self.post_count
		Post.all.size
	end

	def initialize(name)
		@name = name
	end

	def posts
		Post.all.filter{|post| post.author == self}
	end

	def add_post(post)
		post.author = self
	end

	def add_post_by_title(title)
		Post.new(title).author = self
	end
end
