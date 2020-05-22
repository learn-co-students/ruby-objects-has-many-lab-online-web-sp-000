class Author 
  @@post_count = 1 
  
  attr_accessor :name, :posts
  
  def initialize(name)
    @name = name 
    @posts = []
  end 
  
  
  def self.all 
    @@all  
  end 
  
  def self.post_count
    @@post_count 
  end 
  
  def posts
  Post.all.select {|post| post.author == self}
    end  
  
def add_post(post)
    @posts << post 
    post.author = self 
    @@post_count +=1 
end 

def add_post_by_title(title)
add_post(Post.new(title))
end 


  
end