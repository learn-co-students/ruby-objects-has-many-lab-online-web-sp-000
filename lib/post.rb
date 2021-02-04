require 'pry'

class Post 
 attr_accessor :title, :author 
  @@all = [] 
  
  def initialize(title)
    @title = title  
    save 
  end 
  
  def author_name(author=nil)
    #author => nil
    #self => #<Post:0x0000000001d5f5d8  @author=#<Author:0x0000000001d5f268 @name="Sophie">,  @title="My Blog Post!">
    self.author.name
    #self.author.name => "Sophie"
  end 
   
  def save 
    @@all << self 
  end 
  
  def self.all 
    @@all
  end 
end 