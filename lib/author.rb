require 'pry'
class Author
  attr_accessor :name, :posts
  @@AllAuthors = []
  def initialize(name)
    @name = name 
    @posts = []
    @@AllAuthors << self 
  end 
  
  def add_post(post)
    post.author = self  
  end 
  
  def add_post_by_title(title)
    post = Post.new(title)
    post.author = self 
  end 
  
  def self.post_count
    counter = 0 
    @@AllAuthors.each {|author| counter += author.posts.length}
    counter 
    
  end 
  
end 