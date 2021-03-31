class Post
  attr_accessor :title, :author
  @@all=[]
  
  def initialize(title)
    @title=title
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def author_name
    self.author ? author_name=self.author.name : author_name=nil
  end
end