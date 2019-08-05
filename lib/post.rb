require "pry"
class Post
  attr_accessor :name, :title
  @@all = []
  def initialize(name)
    @name = name
    @title = name
    @@all << self
  end

  def author=(author)
    author.posts << self
    @author = author
  end
  def author
    @author
  end

  def author_name
    @author == nil ? nil : @author.name

  end

  def self.all
    @@all
  end

end
