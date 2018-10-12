class Author

  attr_accessor :name, :posts

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    post.author = self
    @posts << post
  end

  def add_post_by_title(title)
    new_post = Post.new(title)
    new_post.author = self
    @posts << new_post
  end

  def author_name(post)
    post.author.name
  end

  def self.post_count
    Post.all.length
  end

end
