class Author

attr_accessor :name, :posts, :title, :author

@@post_count = 1

def initialize(name)
  @name = name
  @posts = []
  @author = author
  # @@post_count += 1
end

def posts
  Post.all.select {|post| post.author == self}
end

def add_post(post)
  post.author = self
  @@post_count += 1
  # @posts << post
end

def add_post_by_title(title)
  post = Post.new(title)
  @posts << post
  post.author = self
  @@post_count += 1
end

def self.post_count
  @@post_count
end

end