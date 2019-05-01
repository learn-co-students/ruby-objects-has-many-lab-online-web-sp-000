require 'pry'

class Post 
  
  attr_reader :title
  attr_accessor :author
  
  @@all = []
  
  def initialize(post_title)
    @title = post_title
    @@all << self
  end
  
  def author_name
    if self.author.nil?
      nil
    else
      self.author.name
    end
  end
  
  def self.all 
    @@all
  end
end