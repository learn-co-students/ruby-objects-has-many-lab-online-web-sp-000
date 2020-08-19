class Post
  attr_accessor :author, :title
@@all = []


  def initialize(title)
    @title = title
    #temporary. i'm not sure if they want it to be called title
    save
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def author_name
    if @author
      @author.name
    else
      nil
    end
  end



end
