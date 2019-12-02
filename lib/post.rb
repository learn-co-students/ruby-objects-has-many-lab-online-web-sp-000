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
#   @author.name

      unless self.author == nil
        return @author.name

      end

  #  if author.name == true
  #  self << author.name
  #  elsif author.name == false || nil
  #    return nil
   end
  #  end


end
