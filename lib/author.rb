class Author
  attr_accessor :name
  attr_reader :posts
  @@posts = 0
  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    post.author = self
    posts << post
    @@posts +=1
  end

  def add_post_by_title(title)
    post = Post.new(title)
    add_post(post)
  end

  def self.post_count
    @@posts
  end

end
