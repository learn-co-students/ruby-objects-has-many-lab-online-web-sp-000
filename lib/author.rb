class Author
  attr_accessor :name, :author
  
  def initialize(name)
    @name = name  
    @posts = []
  end
  
  def posts
    @posts
  end
  
  def add_post(input)
    @posts << input
    input.author = self
  end
  
  def add_post_by_title(name)
    input = Post.new(name)
    @posts << input
    input.author = self
  end
end