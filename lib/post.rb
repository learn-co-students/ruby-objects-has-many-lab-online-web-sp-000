class Post
  attr_accessor :title, :genre
  @@all = []
  @author
  
  def initialize(title)
    @title = title
    @@all << self
  end
  
  def author=(name)
    @author = name
    name.posts << self
  end
  
  def author
    @author
  end
  
  def self.all
    @@all
  end
  
  def author_name
    if @author
      return @author.name
    else
      return nil 
    end
  end
    
end