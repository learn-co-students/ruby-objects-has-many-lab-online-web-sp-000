class Post
  attr_accessor :author
  attr_reader :title
  @@all = []
  
  def initialize(title)
    @title = title
    @author_name = nil
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def author_name
    @author.name if @author
  end
  
end