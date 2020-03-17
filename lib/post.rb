require 'pry'

class Post 
  attr_accessor :author, :title
  
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
  
  def author=(author)
    @author = author
  end
  
  def author_name
    if @author == nil 
      return nil 
    else 
      @author.name 
    end 
  end 
    
end