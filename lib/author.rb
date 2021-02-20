require 'pry'

class Author
  attr_accessor :name
  
  @@post_count = 0

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    self.posts << post
    post.author = self
    @@post_count += 1
  end

  def self.post_count
    @@post_count.size
  end

  def posts
    @posts
  end

  def add_post_by_title(post_name)
    post = Post.new(post_name)
    self.add_post(post)
 end
end