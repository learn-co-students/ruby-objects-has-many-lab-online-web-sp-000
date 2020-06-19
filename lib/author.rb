class Author 
  attr_accessor :name, :posts 
  
  @@all_authors = [] 
  
  def initialize (name)
    @name = name 
    @posts = []
    @@all_authors << self 
  end 
  
  def posts 
    @posts 
  end 
  
  def add_post(post)
    post.author = self 
    @posts << post 
  end 
  
  def add_post_by_title(title)
    title = Post.new(title)
    @posts << title
    title.author = self 
  end
 
 def self.post_count
   total = 0
   @@all_authors.each do |author|
     total += author.posts.count
   end 
   total
 end 
  
end 