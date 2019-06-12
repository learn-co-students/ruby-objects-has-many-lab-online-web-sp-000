class Post
  
  attr_accessor :author, :title
  @@all = []
  
  def initialize(title)
    @title = title
    @@all.push(self)
  end
  
  def self.all
    @@all
  end
  
  def author_name
    if self.author
      @author.name
    else
      nil
    end
  end
  
end