class Post

  attr_accessor :title, :author, :name

  @@all = []

  def initialize (title)
    @title = title
    @@all << self
  end

  def self.all
    @@all
  end

  def author_name
    self.author.name if author
  end

end

#  learn spec/post_spec.rb
