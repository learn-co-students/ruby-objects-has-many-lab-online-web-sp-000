class Post
  attr_accessor :title, :author
  @@all = [] #works
  def initialize(title) #works
    @title = title
    @@all << self
  end
  def self.all #works
    @@all
  end
  def title=(title) #works
  @title = title
  end
  def author=(author) #works
  @author = author
  end
  def author_name
    if self.author == nil
    nil
    else
      self.author.name
    end
  end
end
