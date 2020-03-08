require "pry"
class Author
  
  attr_accessor :name, :title
  
  def initialize(name)
    @name = name
  end
  
  def add_post(post)
    post.author = self
  end

  def add_post_by_title(post)
    post = Post.new(post)
    add_post(post)
  end
  
  def posts
    Post.all.select {|post| post.author == self}
  end
  
  def self.post_count
    Post.all.count
  end
 #binding.pry 
end