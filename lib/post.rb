class Post
  @@all = []

  attr_accessor :title, :author

  def initialize(title)
    @title = title
    @@all << self
  end

  def author_name
    @author ? @author.name : nil
  end

  def self.class_variable_get(variable)
    @@all
  end

  def self.all
    @@all
  end
end
