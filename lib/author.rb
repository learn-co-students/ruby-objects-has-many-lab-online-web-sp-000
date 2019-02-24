class Author

  attr_accessor :name, :author

def initialize(name)
  @name = name
  @posts = []
end

def add_post(title)
  @posts << title
  title.author = self
end

def add_post_by_title(title)
  post = Post.new(title)
  post.author = self
  @posts << post
end

def self.post_count
  Post.all.length
end

def posts
  @posts
end





end
