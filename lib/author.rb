class Author
  attr_accessor :name

  def initialize(name)
    @name = name
    @post = []
    @post << self
  end
  
  def posts
    Post.all
  end
  
  def add_post(post)
    @post << post
    post.author = self
  end
  
  def add_post_by_title(title)
    post = Post.new(title)
    add_post(post)
  end
  
  def self.post_count
    Post.all.count do |el|
      el
    end
  end
end
