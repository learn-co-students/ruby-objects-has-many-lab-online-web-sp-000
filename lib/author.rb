class Author
  attr_accessor :name, :posts
  @@post_total = 0

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    @posts << post
    post.author = self
    @@post_total += 1
  end

  def add_post_by_title(post)
    post = Post.new(post)
    @posts << post
    post.author = self
    @@post_total += 1
  end

  def self.post_count
    @@post_total
  end

end
