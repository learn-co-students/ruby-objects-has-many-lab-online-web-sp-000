class Post 
  attr_accessor :post_title, :author
  @@all = []
  
  def initialize(title)
    @post_title = title
    self.class.all << self
  end 
  
  def self.all
    @@all
  end 
  
  def title
    @post_title
  end 
  
  def author_name
    self.author == nil ? nil : self.author.name
  end

end