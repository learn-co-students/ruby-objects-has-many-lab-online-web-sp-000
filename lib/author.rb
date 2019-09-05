class Author
  attr_accessor :name, :post

  def initialize(name)
    @name = name
  end

  def add_post(post)
    post.author = self
  end

  def add_post_by_title(name)
    post = Post.new(name)
    add_post(post)
  end

  def posts
    Post.all.select {|post| post.author == self}
  end

  def self.post_count
    Post.all.count
  end
end
