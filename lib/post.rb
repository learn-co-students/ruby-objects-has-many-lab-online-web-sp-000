  class Post 
  attr_accessor :title, :author 
  
  @@all = []
  
  def initialize(title)
    @title = title
    save
  end
  
  def save
    @@all << self
  end
  
  def author_name
    if author 
      self.author.name
    else
      nil 
    end
  end
  
  def self.all
    @@all 
  end
end

      