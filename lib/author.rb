class Author 
 attr_accessor :name 
  
  
  def initialize(name)
    @name = name 
  end 
  
  def add_post(post)
   post.author = self 
  end 
 
  def posts 
    post.all.select {|post| post.author == self}
  end 
  
  def add_post_by_name(name)
    post = Post.new(name)
    add_post 
  end 
end 
