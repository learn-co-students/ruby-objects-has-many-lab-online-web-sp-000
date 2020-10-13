class Author

  attr_accessor  :name
  attr_reader :post

@@post_count = 0

def initialize(name)
  @name = name
  @post = []
end

def add_post(post)
  @post << post
  post.author = self
  @@post_count += 1
end

def posts
  Post.all.select {|post| post.author == self}
end

def add_post_by_title(title)
  post = Post.new(title)
  self.posts << post
  post.author = self
  @@post_count += 1
end

def self.post_count
  @@post_count
end

end
