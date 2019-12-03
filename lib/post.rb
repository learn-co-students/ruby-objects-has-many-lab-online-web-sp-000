class Post 
        attr_accessor :title,:author
     
      @@all = []
     
      def initialize(name)
        @title = name

        save
      end
     
      def save
        @@all << self
      end
     
      def self.all
        @@all
      end
  
  def author_name
    if self.author == NIL
    else self.author.name
    end 

  end 
  
end 