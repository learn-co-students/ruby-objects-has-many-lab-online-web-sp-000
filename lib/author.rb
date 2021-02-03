class Author 
 attr_accessor :name 
  
  
  def initialize(name = nil)
    @name = name 
  end 
  
  def add_posts(posts)
   posts.author = self 
  end 
 
  def posts 
    Posts.all.select {|post| post.Author == self}
  end 
  
  def add_posts_by_title(title)
    posts = Post.new(title)
    add_posts(posts) 
  end 
  
   def self.posts_count 
    count = 0 
    Post.all.select {|post| count += 1}
    count 
  end 
end 
