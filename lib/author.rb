class Author 
 attr_accessor :name 
  
  
  def initialize(name = nil)
    @name = name 
  end 
  
  def add_post(post)
   post.author = self 
  end 
 
  def post 
    post.all.select {|post| post.author == self}
  end 
  
  def add_post_by_title(title)
    post = Post.new(title)
    add_post(post) 
  end 
  
   def self.post_count 
    count = 0 
    Post.all.select {|post| count += 1}
    count 
  end 
end 
