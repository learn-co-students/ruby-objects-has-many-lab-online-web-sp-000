class Author
  attr_accessor :name, :post
  
  def initialize(name)
    @name = name
  end
  
  def add_post(new_post)
    new_post.author = self
  end
  
  def add_post_by_title(new_post)
    posting = Post.new(new_post)
    add_post(posting)
  end
  
  def name
    @name
  end
  
  def posts
    Post.all.select { |posting| posting.author == self}
  end
  
  def self.post_count
    Post.all.length
  end
end