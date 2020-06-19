class Author
  
  attr_accessor :name, :posts, :post_counter
  
  @@post_counter = 0
  
  def initialize (name)
    @name = name
    @posts = []
  end
  
  def name
    @name 
  end
  
  def posts
    @posts
  end
  
  def add_post(a_post)
    a_post.author = self
    @posts << a_post
    @@post_counter+=1
  end
  
  def add_post_by_title(a_title)
    a_post = Post.new(a_title)
    @posts << a_post
    a_post.author = self
    @@post_counter+=1
  end
    
  def self.post_count
    @@post_counter
  end
  
end