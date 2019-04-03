class Post
  
  attr_accessor :name, :title, :author, :all
  
  @@all = []
  def initialize (title)
    @title = title
    @@all << self
  end

  def self.all
    @@all
  end
  
  def author_name 
    if author
      return author.name
    else
      return nil
    end
  end
    
end