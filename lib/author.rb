require "pry"
class Author
  attr_accessor :name
  def initialize(name)
    @name = name
    @posts = []
  end

  def posts=(post)
    @posts << post
  end
  def posts
    @posts
  end

  def add_post(post)
    post.author = self
    @posts << post
  end

  def add_post_by_title(title)
    newpost = Post.new(title)
    newpost.title = title
    add_post(newpost)
    #binding.pry
  end

  def self.post_count
    Post.all.size
  end
end
