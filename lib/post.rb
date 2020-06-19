class Post
  attr_accessor :title, :author, :author_name
  @@all = []
  def initialize(title)
    @title = title
    @@all<<self
  end
  def self.all
    @@all
  end
  def author_name
    if author == nil
      puts nil
    else
   self.author.name
 end
 end
end
