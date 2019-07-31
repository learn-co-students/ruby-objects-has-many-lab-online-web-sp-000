
class Author

  @@post_count = []

  attr_accessor :name, :posts

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    @posts << post
    post.author =  self
    @@post_count << self
  end

  def add_post_by_title(name)
    new_post = Post.new(name)
    add_post(new_post)
  end

  def self.post_count
    @@post_count.size
  end
end
