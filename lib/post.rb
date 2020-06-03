class Post
  attr_accessor :title
  attr_reader :author


  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end

  def author=(author)
    @author = author
    author.posts << self
    Author.increment_post_count
  end

  def author_name
    author.name if author
  end

  def self.all
    @@all
  end

end