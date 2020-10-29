class Author
  
  attr_accessor :name, :post
  
  @@posts = [ ]
  
  def initialize(name)
    @name = name
  end
  
  def new
    @name
    @@posts << self
  end
  
  def posts
    @@posts = Post.all
  end
    
  def add_post(post)
    post.author = self
  end
  
  def add_post_by_title(post_title)
    post_title = Post.new(post_title)
    post_title.author = self
  end
    
  def self.post_count
    @@posts.count
  end
  
end