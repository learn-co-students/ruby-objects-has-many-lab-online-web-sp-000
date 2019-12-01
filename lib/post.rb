class Post
  attr_accessor :title, :author, :author_name

  @@all = []

  def initialize(name)
    @title = name
    @@all << self
  end




  def self.all
    @@all
  end

  def author_name
    #  binding.pry
    @author = author
    @author.name
    #  unless @author.name == nil
    #    return nil
  end
  #  if author.name == true
  #  self << author.name
  #  elsif author.name == false || nil
  #    return nil
  #  end
  #  end


end
