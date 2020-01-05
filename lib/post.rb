class Post
  attr_accessor :author, :title

  @@all = []   #class variable

  def initialize(title, author = nil)
    @title = title      #instance variable
    @@all << self
  end

  def self.all
    @@all
  end

  def author_name
    if self.author != nil
      self.author.name
    else
      nil
    end
  end


end
