class Author
  attr_accessor :name, :author
    @@post_count = 0

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
    @@post_count += 1

  end
  
  def add_post_by_title(name)
    input = Post.new(name)
    @posts << input
    input.author = self
    @@post_count += 1
  end
  
  def self.post_count
    @@post_count
  end
end