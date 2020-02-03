class Post 
  attr_accessor :author, :title 
  @@all = []
  def initialize(title)
    @title = title 
    @@all << self  
  end 
  def add_post_by_title(title, author)
    @title = title 
    @author = author 
    @@all << self 
  end 
  def author_name
    if(self.author)
      self.author.name
    else 
      nil 
    end 
  end 
  def self.post_count
    @@all.length 
  end 
  def self.all 
    @@all 
  end 
end 