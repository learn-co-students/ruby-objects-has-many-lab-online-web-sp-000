require 'pry'

class Author
  attr_accessor :name
  
  def initialize(name)
    @name = name
  end
  
  def posts
    Post.all.select {|title| title.author == self}
  end
  
  def add_post(title)
    title.author = self
  end
  
  def add_post_by_title(title)
    title = Post.new(title)
    title.author = self
  end
  
  def self.post_count
    Post.all.count
  end
end