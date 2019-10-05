class Author

  attr_accessor :name

  @@count = 0

  def initialize(name)
    @name = name
  end

  def posts
    Post.all # Returns the array of all the posts.
  end

  def add_post(post)
    post.author = self
    @@count += 1
  end

  def add_post_by_title(name)
    post = Post.new(name)
    add_post(post)
    @@count += 1
  end

  def self.post_count
    @@count
  end

end
