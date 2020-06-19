class Author

attr_accessor :name
@@count = 0

def initialize(name)
  @name = name
  @posts = []
end
def posts
  @posts
end
def add_post(post)
  post.author = self
  @posts << post
  @@count += 1
end
def add_post_by_title(title)
  post = Post.new(title)
  post.author = self
  @posts << post
  @@count += 1
end

def self.post_count
  @@count
end

def posts
@posts
end

end
