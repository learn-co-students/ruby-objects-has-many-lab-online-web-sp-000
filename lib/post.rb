class Post
  
  attr_accessor :author, :name
  
  @@all = []
  
  def initialize(title)
    @title = title
    save
  end
  
   def author_name
    self.author.name if self.author
  end

  def title
    @title 
  end
  
  def save
    @@all << self
  end
  
  def self.all
    @@all
  end
  
end
