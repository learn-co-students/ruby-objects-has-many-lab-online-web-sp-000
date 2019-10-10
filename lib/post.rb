#belongs to an author

#need to have :author
##individual author will need a method that returns collection of posts that belong to author--will need to have class variable holding all instances of every post in an array
#class method that returns class variable holdingthose instances

class Post
  attr_accessor :author, :title
  @@all = []
  
  def initialize(title)
    @title = title
    @@all << self
  end
  
 def self.all
    @@all
  end
  
  def author_name
    author.name if author
  end
end