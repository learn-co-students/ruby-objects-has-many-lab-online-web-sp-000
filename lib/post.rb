class Post
  attr_accessor :title, :author
  
  @@all = []
  
  def initialize(title)
    @title = title
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def author_name
    match = nil 
    if self.author != nil
    match = self.author.name
  end
  match
  end
  
end