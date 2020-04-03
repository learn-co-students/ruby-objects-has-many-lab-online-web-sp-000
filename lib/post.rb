require 'pry'
class Post
 
 attr_accessor :title, :author, :name
 
  @@all = []
  
  def initialize(title)
    @title = title
    @@all << self
  end
 
  def author_name
    if self.author != nil
      self.author.name
    else nil
  end
  end 
  #he condition shouldn't check for the name, it should check #for the author itself
#binding.pry

 
  def self.all
   @@all
  end
 
 
  
end