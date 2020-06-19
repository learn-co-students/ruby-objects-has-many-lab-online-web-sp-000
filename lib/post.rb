class Post 
  attr_accessor :author, :title
  @@all = []
  def initialize(title)
    @title = title
    self.class.all << self
  end
  
  def self.all
    @@all
  end
  
  def author_name
    self.author.name if self.author
  end
end