class Author
  attr_accessor :name, :author
  
  def initialize(name)
    @name = name  
    @posts = []
  end
  
  def posts
    @posts
  end
  
  def add_post(post)
    @posts << post
    post.author = self
  end
  
  def add_post_by_title(name)
    song = Post.new(name)
    @posts << song
    song.author = self
  end
end