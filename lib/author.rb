class Author 
 attr_accessor :name, :post  
  
  
  def initialize(name)
    @name = name 
  end 
  
  def add_post(posts)
   posts.author = self 
  end 
  
 def posts 
    Posts.all.select {|post| posts.author == self} 
    # posts = Post.new(title)
    # add_post(posts) 
  end 
  
  def add_posts_by_title(title)
    posts = Post.new(title)
    add_post(posts) 
  end 
  
   def self.post_count 
    count = 0 
    Post.all.select {|post| count += 1}
    count 
  end 
end 