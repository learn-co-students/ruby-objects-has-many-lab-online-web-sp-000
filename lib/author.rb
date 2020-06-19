class Author

  attr_accessor :posts,  :title, :post_count, :name


  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    @posts << post
    post.author = self
  end

  def add_post_by_title(title)
    post = Post.new(title)
    post.author = self
    @posts << post
  end

  def Author.post_count
    Post.post_count
  end





end
