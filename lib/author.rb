class Author
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def posts
    Post.all.select {|post| post.author == self}
  end

  def add_post(title)
    self.posts << title
    title.author = self
  end

  def add_post_by_title(title)
    title = Post.new(title)
    add_post(title)
    title
  end

  def self.post_count
    Post.all.count
  end
end
