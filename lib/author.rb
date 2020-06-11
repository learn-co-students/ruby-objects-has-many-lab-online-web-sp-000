class Author

  attr_accessor :post, :name
  @@post = []

  def initialize(name)
    @name = name
  end

  def posts
    Post.all.select {|post| post.author==self }
  end

  def add_post(post)
    post.author = self
    @@post << self
  end

  def add_post_by_title(title)
    post = Post.new(title)
    add_post(post)
    @@post << self
  end

  def self.post_count
    @@post.length
  end
end
