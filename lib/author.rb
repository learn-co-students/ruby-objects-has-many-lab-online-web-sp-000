class Author 
  attr_accessor :name
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end 
  
  def add_post(post_to_add)
    post_to_add.author = self
  end 
  
  def posts
    Post.all.select do |post|
      post.author == self
    end 
  end 
  
  def add_post_by_title(title)
    Post.new(title).author = self
  end
  
  def self.post_count
    Post.all.count
  end 
  
end 