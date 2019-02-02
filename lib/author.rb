class Author 
  
  attr_accessor :name, :author 
  attr_reader :posts
  
      
  def initialize(name)
    @name = name
    @posts = []
  end
  
  def posts 
    @posts
  end  
  def add_post(post_instance)
    @posts << post_instance 
    post_instance.author = self
  end 
  
  def add_post_by_title(post_title)
    post_title = Post.new(post_title)
    @posts << post_title 
    post_title.author = self
  end 
  def self.post_count 
    Post.all.count
  end 
end 