class Post
  attr_accessor :author, :name

  @@all = []

  def initialize(title)
    @title = title
    save
  end

  def save
    @@all << self
  end

  def title
    @title
  end

  def self.all
    @@all
  end

  def author_name
    if @author == nil
      nil
    else
      @author.name
    end
  end

  def author
    @author
  end

end
