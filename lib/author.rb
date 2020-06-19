require 'pry'

class Author
  attr_accessor :name 
  attr_reader :posts
  
  def initialize(name)
    @name = name
    @posts = []
  end
  
  def add_post(post)
    post.author = self
    @posts << post
  end
  
  def add_post_by_title(name)
    post = Post.new(name)
    post.author = self
    @posts << post
  end
  
  def self.post_count
    return Post.all.size
  end
end