require "pry"

class Author

  attr_accessor :name, :posts

  @@allposts = []

  def self.allposts
    @@allposts
  end

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    post.author = self
    @posts << post
  end

  def add_post_by_title(title)
    new_post = Post.new(title)
    add_post(new_post)
  end

  def self.post_count
    Author.allposts.size
  end
end
