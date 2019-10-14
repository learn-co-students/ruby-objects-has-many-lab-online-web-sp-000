class Post
  
  @@all = []
  attr_accessor :title, :author
  def initialize(title)
    @title = title
    save
  end

  def author_name
    if @author == nil
      return nil
    else
      @author.name
    end
  end
  
  def save
    @@all << self
  end
 
  def self.all
    @@all
  end
end