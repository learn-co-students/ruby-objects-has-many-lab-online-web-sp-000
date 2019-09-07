class Author
  attr_accessor :name
  
  @@posts = []
  
  def initialize(name)
    @name = name
    @posts = []
    
  def add_post(post_object)
    @posts << post_object
    @@posts << post_object
    post_object.author = self
  end
  
  def add_post_by_title(title)
    post_object = Post.new(title)
    add_post(title)
  end
  
  def self.post_count
    Post.all.count
  end
end