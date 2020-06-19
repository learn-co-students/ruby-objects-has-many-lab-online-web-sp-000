require 'pry'

class Post

  attr_accessor :title, :author
  @@all = []
  def initialize(title)
    @title = title
    @author = nil
    @@all << self
    Author.allposts << self
  end

  def author_name
    return author.name unless !author
    nil
  end

  def self.all
    @@all
  end
end
