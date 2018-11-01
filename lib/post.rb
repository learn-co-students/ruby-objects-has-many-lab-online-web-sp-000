class Post
  attr_accessor :author, :title
  @@all=[]

  def initialize(title)
    @title = title
    self.class.all << self
  end

  def author_name
    self.author.name rescue nil
  end


  def self.all
    @@all
  end

end
