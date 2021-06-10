class Author
  attr_accessor :name

  def initialize(name)
    @name = name
    @posts = []
  end

  def posts
    Post.all.select {|post| post.author == self}
  end

  def add_post(post)
    @posts << post
    post.author = self
  end

  def add_post_by_title(post_title)
    p = Post.new(post_title)
    add_post(p)
    p
  end

  def self.post_count
    Post.all.size
  end

end
