require "pry"

class Author
  attr_accessor :name
  
  @@posts = []
  
  def initialize(name = nil)
    @name = name 
    @@posts << self
    end
    
    def posts
      Post.all.select {|post| post.author == self}
    end
    
    def add_post(post)
    post.author = self
    end 
    
  def add_post_by_title(title)
   new = Post.new(title) 
    add_post(new)
    end
    
  def self.post_count
  Post.all.count
  end 
 
    
    end