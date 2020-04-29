class Post
  attr_accessor :author, :title

  @@all = []

  def initialize(title, author = nil)
    @title = title
    @author = author
    @@all << self
  end

  def self.all
    @@all
  end

  def author_name
    if @author
      @author.name
    end
  end
end
