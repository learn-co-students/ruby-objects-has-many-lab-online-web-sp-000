class Post
  attr_accessor :title, :author
  
  @@all = []
  
  def initialize(title)
    @title = title
    save
  end
  
  def save
    @@all << self if !@@all.include?(self) #add self to all if not already added
  end
  
  def self.all
    @@all
  end
  
  def author_name
    self.author ? self.author.name : nil
  end
  
end