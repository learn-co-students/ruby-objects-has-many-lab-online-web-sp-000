class Author
  
  attr_accessor :name, :posts, :title
  
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
    @posts << post
    @@post_count += 1
  end
  
  def add_post_by_title(title)
    post = Post.new(title)
    post.author = self
    @posts << post
    @@post_count += 1
  end    
    
  def self.post_count
    @@post_count += 1
  end
  
end