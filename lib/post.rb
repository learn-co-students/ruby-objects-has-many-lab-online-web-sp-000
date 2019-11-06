class Post 
  
#Post #title has a title
#Post #author belongs to an author
  attr_accessor :title :author
# Post @@all is a class variable set to an array 
  @@all = []
  
#Post #new pushes new instances into a class variable called @@all upon initialization
  def initialize(title)
    @title = title
    @@all << self
  end
  
# Post .all is a class method that returns an array of all post instances that have been created
  def self.all
    @@all
  end
  
# Post #author_name knows the name of its author
#Post #author_name returns nil if the post does not have an author
  def author_name
    post.author = self
    author_name if author
  end
  
  