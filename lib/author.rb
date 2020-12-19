class Author 
  attr_accessor :name 
  
  @@post_count = 0 
  
  def initialize(name)
    @name = name
    @posts = []
  end
  
  def posts
    Post.all.select {|post| post.author == self}
  end
  
  def add_post(post)
    post.author = self
    @@post_count += 1
  end
  
  def add_post_by_title(name)
    post = Post.new(name)
    add_post(post)
  end
  
  def self.post_count
    @@post_count += 1 
  end
  
  
end