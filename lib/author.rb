class Author 
  attr_accessor :name 
    @@total = 0
  
  def initialize(name)
    @name = name
    @posts = []
  end
  
  def posts 
    @posts 
  end
  
  def add_post(post)
    @posts << post
    post.author = self
    @@total += 1
  end
  
  def add_post_by_title(title)
    post = Post.new(title)
     @posts << post
     post.author = self
     @@total += 1
  end
  
  def self.post_count
    @@total
  end
  
end 