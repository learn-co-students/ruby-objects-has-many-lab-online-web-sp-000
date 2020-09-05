class Post

  attr_accessor :title, :author

  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end

  def author_name
    if !@author
    else
      @author.name
    end
  end

  def self.all
    @@all
  end

end
