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

  def Post.post_count
    @@all.length
  end



end
