class Post
  attr_accessor :title, :author

  @@all = []

  def initialize(title)
    @title = title
    save
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def author
    @author
  end

  def author_name
    if @author.nil?
      return nil
    else
      return self.author.name
    end
  end

end
