class Post
<<<<<<< HEAD
 attr_accessor :title, :author
  @@all = []
  
  def initialize(title)
    @title = title
    @@all << self
    @author = nil
  end
  
  def self.all
    @@all
  end
  
  def author_name
    return nil if @author.nil?
    @author.name
  end
=======
>>>>>>> 2f05185856984d315dce4211688798a76a1cb8b4
end