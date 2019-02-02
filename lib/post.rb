class Post 
  attr_accessor :title, :author 
  @@all = []  #this does not go in #initialize because you do not create an array every time something is created
  
  def initialize (title)
    @title = title
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end 
  def author=(new_author)
    @author=new_author 
    new_author.add_post(self) if !new_author.posts.include?(self)
  end 
  def author_name
    author.nil? ? nil : author.name
  end 
end 