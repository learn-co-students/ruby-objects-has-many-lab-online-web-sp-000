class Post 
  attr_accessor :title
  attr_accessor :author 
  attr_accessor :genre
  
  @@all = []
  
  def initialize(title)
    @title = title 
    save
  end
  
  def save
    @@all.push(self) 
  end 
  
  def self.all 
    return @@all 
  end 
  
  def author_name 
    return defined?(@author.name) == nil ? nil : @author.name
  end
end