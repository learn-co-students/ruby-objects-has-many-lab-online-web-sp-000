class Post 
  attr_accessor :title, :author 
  @@all = []
  def initialize(title)
    @title = title
    @@all << self
  end

   def Post.all 
    @@all 
  end


  
  def author_name
   if @author == nil 
     return nil
   else
     @author.name
   end
  end
end