class Author
  attr_accessor :name, :posts

  def initialize(name)
    @name = name
  end

  def add_post(post)
    post.author = self
  end

  def posts
    Post.all.select {|post| post.author == self}
  end
end
