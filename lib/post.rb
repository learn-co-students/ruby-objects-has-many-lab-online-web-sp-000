class Post
  
  attr_accessor :name, :author, :title
  
  @@all = []
  
  def initialize(name, author=nil)
    @name = name
    @author = author
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def title
    @name
  end
  
  def author_name
    if self.author 
      self.author.name
    else
      nil
    end
  end
  
end