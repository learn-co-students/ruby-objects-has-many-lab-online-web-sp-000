class Author
  attr_accessor :name

  @@post_count = 0

  def initialize(name)
    @name = name
  end

  def posts
    Post.all.select {|p| p.author == self}
  end

  def self.post_count
    Post.all.count
  end

  def add_post(post_title)
    post_title.author = self
    @@post_count += 1
  end

  def add_post_by_title(post_title)
    post = Post.new(post_title)
    post.author = self
    @@post_count += 1
  end
end
