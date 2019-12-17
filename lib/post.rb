require 'pry'
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
  
  def author_name
    # if self.author == nil 
    #   nil 
    # else 
    #   self.author.name 
    # end 
    author.name if author
    # binding.pry
  end 
  
end 