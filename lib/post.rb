class Post
attr_accessor :name, :author, :title
  @@all = []

  def initialize(author, title=nil)
    @name = name
    @author = author
    @@all << self
  end

  def author_name
    if self.author
      self.author.title
    else
      nil
    end

  def self.all
    @@all
  end
end
