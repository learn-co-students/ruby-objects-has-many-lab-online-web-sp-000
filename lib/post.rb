class Post 
 attr_accessor :name, :author 
  @@all = [] 
  
  def initialize(name)
    @name = name 
    save 
  end 
  
  def save 
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end 
end 