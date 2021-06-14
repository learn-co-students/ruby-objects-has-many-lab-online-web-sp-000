require "pry"

class Post 
  attr_accessor :author, :title
  
  @@all = []
  
  def initialize(title)
    @title = title
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def author_name
    #binding.pry
    
    author.name if author
    
    # if self.author.name != nil || self.author.name != ""
    #   self.author.name
    # else
    #   nil  
    # end 
  end
  
  
end 