class Author
  @@all = []
  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def add_post(post)
    post.author = self
  end

  def add_post_by_title(title)
    add_post(Post.new(title))
  end

  def posts
    Post.all.select {|p| p.author == self}
  end

  def self.post_count
    Post.all.count
  end

end
