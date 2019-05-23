class Post 
  attr_accessor :title, :all, :author
  
  @@all = [] 
  
  def initialize(title) 
    @title = title 
    @@all << self
  end 
  
  def self.all
     @@all
  end
  def author_name 
    self.author.name if self.author
  end 
end 