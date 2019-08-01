class Author 
    attr_accessor :name
  def initialize(name)
    @name = name 
  end
  
     def posts
    Post.all.select do |writer|       
      writer.author == self           
    end
  end
  
  def add_post(song)
    song.author = self
  end
  
  def add_post_by_title(title)
    new_post = Post.new(title) 
    add_post(new_post)
  end
  
  def self.post_count
    return Post.all.count
  end
end 