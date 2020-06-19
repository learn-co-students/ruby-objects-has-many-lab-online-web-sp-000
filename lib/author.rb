class Author

attr_accessor :name
@@post_count = 0

def initialize(name)
  @name = name
  @posts = []
end

def add_post(post)
  @posts << post
  post.author = self
  @@post_count += 1
end

def posts
  @posts
end

def add_post_by_title(title)
    post = Post.new(title)
    post.author = self
    self.add_post(post)
  end

def self.post_count
  @@post_count
end

end
