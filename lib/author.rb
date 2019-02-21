class Author
  attr_accessor :title, :name, :author

@@posts_count = 0

  def initialize(name)
    @name = name
    @title = title
    @posts = []
  end

  def add_post(post)
    self.posts << post
    post.author = self
    @@posts_count +=1
  end

  def add_post_by_title(name)
    post = Post.new(name)
    self.posts << post
    post.author = self
    @@posts_count += 1
  end

  def posts
    @posts
  end

  def self.posts_count
  @@posts_count
  end
end
