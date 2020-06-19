class Post
  attr_accessor :author, :title
  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end

  def self.all
    return @@all
  end

  def author_name
    if @author == nil
      return nil
    else
      @author.name
    end
  end


end
