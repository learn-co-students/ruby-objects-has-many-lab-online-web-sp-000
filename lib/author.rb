require 'pry'

class Author 
  
  attr_accessor :posts, :name
  
  def initialize(name)
    @name = name
    @posts = []
  end
    
  def posts 
    Post.all.select {|posts| posts.author == self}
  end
  
  def add_post(post_title)
    @posts << post_title
    post_title.author = self if post_title.author != self
  end

  def add_post_by_title(title)
    new_post = Post.new(title)
    @posts << new_post
    new_post.author = self
  end
    
  def self.post_count 
    Post.all.length 
  end

end