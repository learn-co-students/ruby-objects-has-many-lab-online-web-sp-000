class Author
 @@post_count = 0 
  attr_accessor :name, :posts
  
  def initialize(name)
    @name = name
    @posts = []
    @@post_count += 1
  end
  
  def name
    @name
  end
  
  def add_post(post)
    post.author = self
  end
 
  def posts
    Post.all.select {|post| post.author == self}
  end
  
  def add_post_by_title(name)
    post = Post.new(name)
    add_post(post)
  end
  
  def self.post_count
    Post.all.count
  end
  
end