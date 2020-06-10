class Author

  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def posts
    Post.all.select{|p| p.author == self}
  end

  def add_post(title)
    title.author = self
  end

  def add_post_by_title(title)
    post = Post.new(title)
    post.author = self
  end

  def self.post_count
    Post.all.count
  end

end
