require 'pry'

class Author
  attr_accessor :name, :posts
  @@posts_count = 0

  def initialize (name)
    @name = name
    @posts = []
  end

  def add_post(post)
    @@posts_count += 1
    post.author = self
    post.author.posts << post
  end

  def add_post_by_title(post_name) #where is name???
    s = Post.new(post_name)
    self.add_post(s)
  end

  def self.post_count
    @@posts_count
  end

end
