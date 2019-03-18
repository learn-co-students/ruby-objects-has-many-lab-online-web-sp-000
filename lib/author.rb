class Author 
  attr_accessor :name, :posts 
  
  @@authors = []
  
  def initialize(name)
    @name = name 
    @posts = []
    @@authors << self 
  end 
  
  def add_post(new_post)
    @posts << new_post 
    new_post.author = self 
  end 
  
  def add_post_by_title(title)
    new_post = Post.new(title)
    new_post.author = self 
    @posts << new_post
  end 
  
  def self.post_count
    counter = 0 
    @@authors.each do |author|
      counter += author.posts.length 
    end 
    counter 
  end 
  
end 